//
//  StoreKitManager.swift
//  Prayer Assistant
//
//  Created by Christopher Fernandes on 06/01/23.
//

import Foundation
import StoreKit
import SwiftUI

class StoreKitManager: ObservableObject {
    
    @Published var storeProducts: [Product] = []
    @Published var purchasedCourses: [Product] = []
    
    private let productDict: [String : String]
    
    init() {
        
        if let plistPath = Bundle.main.path(forResource: "PurchaseList", ofType: "plist"),
           let plist = FileManager.default.contents(atPath: plistPath) {
            productDict = (try? PropertyListSerialization.propertyList(from: plist, format: nil) as? [String:String]) ?? [:]
        } else {
            productDict = [:]
        }
        
        Task {
            await requestProducts()
        }
    }
    
    @MainActor
    func requestProducts() async {
        do {
            //using the Product static method products to retrieve the list of products
            storeProducts = try await Product.products (for: productDict.values)
            // iterate the "type" if there are multiple product types
        } catch {
            print(error)
        }
    }
    
    func purchase(_ product: Product) {
        Task.init {
            do {
                _ = try await product.purchase()
            }
            catch {
                print(error)
            }
        }
    }
    
    //    // call the product purchase and returns an optional transaction
    //    func purchase(_ product: Product) async throws -> Transaction? {
    //        //make a purchase request - optional parameters available let
    //        let result = try await product.purchase()
    //
    //        //check, the results
    //        switch result {
    //        case .success (let verificationResult):
    //            let transaction = try checkVerified(verificationResult)
    //            //the transaction is verified, deliver the content to the user
    //            await updateCustomerProductStatus()
    //            //always finish a transaction - pertormance
    //            await transaction.finish()
    //
    //            return transaction
    //        case .userCancelled, .pending:
    //            return nil
    //        default:
    //            return nil
    //        }
    //    }
    
    //Generics - check the verificationResults
    func checkVerified<T>(_ result: VerificationResult<T>) throws -> T {
        switch result {
        case .unverified:
            //failed verificaiton
            throw StoreError.failedVerification
        case .verified(let signedType):
            return signedType
        }
    }
    
    @MainActor
    func updateCustomerProductStatus() async {
        var purchasedCourses: [Product] = []
        
        for await result in Transaction.currentEntitlements {
            do {
                let transaction = try checkVerified(result)
                
                if let course = storeProducts.first(where: { $0.id == transaction.productID}) {
                    purchasedCourses.append(course)
                }
            } catch {
                print("Transaction failed verification")
            }
            self.purchasedCourses = purchasedCourses
        }
    }
}

public enum StoreError: Error {
    case failedVerification
}
