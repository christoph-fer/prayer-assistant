//
//  DataController.swift
//  catholicism
//
//  Created by Christopher Fernandes on 30/01/23.
//

import Foundation
import CoreData

class DataController : ObservableObject {
    let container = NSPersistentContainer(name: "PrayersModel")
    
    init() {
        container.loadPersistentStores{ desc, error in
            if let error = error {
                print("Failed to load that data \(error.localizedDescription)")
            }
        }
    }
    
    func save(context: NSManagedObjectContext) {
        do {
            try context.save()
            print("Data saved")
        } catch {
            print("We couldn't save the data...")
        }
    }
    
    func addPrayer(name: String, prayercontent: String, context: NSManagedObjectContext) {
        let myprayer =  MyPrayer(context: context)
        myprayer.id = UUID()
        myprayer.name = name
        myprayer.prayercontent = prayercontent
        myprayer.date = Date()
        
        save(context: context)
    }
    
    func editPrayer(myprayer: MyPrayer, name: String, prayercontent: String, context: NSManagedObjectContext) {
        myprayer.name = name
        myprayer.prayercontent = prayercontent
        myprayer.date = Date()
        
        save(context: context)
    }
}
