//
//  PrayersListView.swift
//  Prayer Assistant
//
//  Created by Christopher Fernandes on 24/09/22.
//

import SwiftUI

struct SettingsListView: View {
    var settingsCategory: Category
    @ObservedObject var settingsModel: SettingsModel
    @State private var selectedSetting: Setting?
    
    
    init(settingsCategory: Category) {
        self.settingsCategory = settingsCategory
        settingsModel = SettingsModel(with: settingsCategory.name)
    }
    
    
    
    var body: some View {
        
        

            List(settingsModel.settings) { setting in
                 NavigationLink(destination: PrayersDetailView(setting: setting),
                               tag: setting,
                               selection: $selectedSetting) {
                    HStack {
                        Text(setting.name)
                    }
                }
                               
            }
        .navigationTitle(settingsCategory.name)
    }
}

//extension UIDevice {
//    static var isIPad: Bool {
//        UIDevice.current.userInterfaceIdiom == .pad
//    }
//    
//    static var isIPhone: Bool {
//        UIDevice.current.userInterfaceIdiom == .phone
//    }
//}

struct SettingsListView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//        SettingsListView(settingsCategory: Category.name.first!)
    }
}



