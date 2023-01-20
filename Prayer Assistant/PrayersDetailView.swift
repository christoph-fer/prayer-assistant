//
//  PrayersDetailView.swift
//  Prayer Assistant
//
//  Created by Christopher Fernandes on 24/09/22.
//

import SwiftUI

struct PrayersDetailView: View {
    var setting: Setting
    var body: some View {
        VStack {
            Text(setting.value)
                        .font(.title2)
                        .padding(.horizontal)
                        .navigationTitle(setting.name)
            Spacer()
        }
        
    }
}

struct PrayersDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
