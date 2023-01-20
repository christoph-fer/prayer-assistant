//
//  MarianPrayersDetail.swift
//  Prayer Assistant
//
//  Created by Christopher Fernandes on 01/12/22.
//

import SwiftUI

struct MarianPrayersDetail: View {
    
    var prayer: MarianPrayer
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
    }
}

struct MarianPrayersDetail_Previews: PreviewProvider {
    static var previews: some View {
        MarianPrayersDetail(prayer: MarianPrayerList.marianPrayers.first!)
    }
}
