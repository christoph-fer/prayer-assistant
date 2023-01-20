//
//  EssentialPrayersDetail.swift
//  Prayer Assistant
//
//  Created by Christopher Fernandes on 25/09/22.
//

import SwiftUI

struct EssentialPrayersDetail: View {
    
    
    var prayer: EssentialPrayer
    var body: some View {
        ZStack {
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack {
                    HStack {
                        Text(.init(prayer.prayerContent))
                            .font(.title2)
                        Spacer()
                    }
                    Spacer()
                }
                .padding()
            }
            )
        }
//        .navigationTitle(prayer.prayerName)
//        .navigationBarTitleDisplayMode(.large)
    }
}

struct EssentialPrayersDetail_Previews: PreviewProvider {
    static var previews: some View {
        EssentialPrayersDetail(prayer: EssentialPrayerList.essentialPrayers.first!)
    }
}
