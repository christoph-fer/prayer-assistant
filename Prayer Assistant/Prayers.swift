//
//  Prayers.swift
//  Prayer Assistant
//
//  Created by Christopher Fernandes on 24/09/22.
//

import SwiftUI

struct Category: Identifiable, Hashable {
    var id = UUID().uuidString
    var name: String
    var icon: String
}
 
 
struct Setting: Identifiable, Hashable {
    var id = UUID().uuidString
    var name: String
    
    var value: String {
        [
            "Our Father, Who art in heaven," +
            "Hallowed be Thy Name." +
            "Thy Kingdom come. " +
            "Thy Will be done, " +
            "on earth as it is in Heaven. " +

            "Give us this day our daily bread. " +
            "And forgive us our trespasses, " +
            "as we forgive those who trespass against us. " +
            "And lead us not into temptation, " +
            "but deliver us from evil. Amen.",
            "Pretium viverra suspendisse potenti nullam ac tortor vitae purus.",
            "Laoreet suspendisse interdum consectetur libero id faucibus nisl.",
            "Faucibus et molestie ac feugiat sed lectus vestibulum.",
            "Faucibus et molestie ac feugiat sed lectus vestibulum."
        ][Int.random(in: 0..<5)]
    }
}
 
 
class CategoriesModel: ObservableObject {
    @Published var categories: [Category] = [Category(name: "Basic Prayers", icon: "leaf.fill"),
                                             Category(name: "Daily Prayers", icon: "sun.max.fill"),
                                             Category(name: "Marian Prayers", icon: "sparkles"),
                                             Category(name: "Color Theme", icon: "leaf.fill")
    ]
}
 
 
class SettingsModel: ObservableObject {
    @Published var settings = [Setting]()
    
    init(with category: String) {
        switch category {
            case "Basic Prayers":
                settings = [Setting(name: "The Sign of the Cross"), Setting(name: "Our Father"),
                            Setting(name: "Hail Mary")]
                
            case "Language":
                settings = [Setting(name: "English"), Setting(name: "German"),
                            Setting(name: "French"), Setting(name: "Italian"),
                            Setting(name: "Spanish"), Setting(name: "Greek"),
                            Setting(name: "Russian"), Setting(name: "Hindi"),
                            Setting(name: "Chinese")]
                
            case "Connected Accounts":
                settings = [Setting(name: "Facebook"), Setting(name: "Twitter"),
                            Setting(name: "Instagram"), Setting(name: "Linkedin"),
                            Setting(name: "Google")]
                
            case "Color Theme":
                settings = [Setting(name: "Red"), Setting(name: "Yellow"),
                            Setting(name: "Purple"), Setting(name: "Green"),
                            Setting(name: "Monochrome")]
                
            default: break
        }
    }
}
 

