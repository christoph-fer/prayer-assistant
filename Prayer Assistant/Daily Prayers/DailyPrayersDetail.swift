//
//  DailyPrayersDetail.swift
//  Prayer Assistant
//
//  Created by Christopher Fernandes on 01/12/22.
//

import SwiftUI

struct DailyPrayersDetail: View {
    
    var prayer: DailyPrayer
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

struct DailyPrayersDetail_Previews: PreviewProvider {
    static var previews: some View {
        DailyPrayersDetail(prayer: DailyPrayerList.dailyPrayers.first!)
    }
}
