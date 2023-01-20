//
//  Store.swift
//  Prayer Assistant
//
//  Created by Christopher Fernandes on 05/01/23.
//

import StoreKit
import Foundation
import SwiftUI

class ViewModel: ObservableObject {
    
    @Published var products: [Product] = []
    
    func fetchProducts() {
        Task.init {
            do {
                let products = try await Product.products(for: ["com.donate.small", "com.donate.medium"])
                DispatchQueue.main.async {
                    self.products = products
                }
            }
            catch {
                 print(error)
            }
        }
    } 
    
    func purchase() {
        Task.init {
            guard let product = products.first else { return }
            do {
                let result = try await  product.purchase()
            }
            catch {
                print(error)
            }
        }
    }
}
