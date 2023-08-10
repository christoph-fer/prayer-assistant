//
//  DailyPrayersList.swift
//  Prayer Assistant
//
//  Created by Christopher Fernandes on 01/12/22.
//

import SwiftUI

struct DailyPrayersList: View {
    
    var dailyPrayer: [DailyPrayer] = DailyPrayerList.dailyPrayers
    @State var selectedPrayerId: UUID?
    
    var body: some View {
        List(dailyPrayer, id: \.id) { prayer in
            NavigationLink(destination: DailyPrayersDetail(prayer: prayer) .navigationBarTitleDisplayMode(.large)
                .navigationBarTitle(prayer.prayerName), tag: prayer.id, selection: $selectedPrayerId, label: {
                    HStack(spacing: 15) {
                        VStack(alignment: .leading, spacing: 5) {
                            Text(prayer.prayerName)
                                .font(.body)
                                .lineLimit(1)
                        }
                    }
                }
                           
            )
//            .onAppear {
//                if UIDevice.current.userInterfaceIdiom == .pad {
//                    DispatchQueue.main.async {
//                        selectedPrayerId = DailyPrayerList.dailyPrayers.first?.id
//                    }
//                }
//            }
        }
        .navigationTitle("Daily Prayers")
        .listStyle(.insetGrouped)
    }
}

struct DailyPrayersList_Previews: PreviewProvider {
    static var previews: some View {
        DailyPrayersList()
    }
}
