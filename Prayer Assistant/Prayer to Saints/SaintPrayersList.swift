//
//  SaintPrayersList.swift
//  Prayer Assistant
//
//  Created by Christopher Fernandes on 08/12/22.
//

import SwiftUI

struct SaintPrayersList: View {
    var saintPrayer: [SaintPrayer] = SaintPrayerList.saintPrayers
    @State var selectedPrayerId: UUID?
    
    var body: some View {
        List(saintPrayer, id: \.id) { prayer in
            NavigationLink(destination: SaintPrayersDetail(prayer: prayer) .navigationBarTitleDisplayMode(.large)
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
        .navigationTitle("Prayer to Saints")
        .listStyle(.insetGrouped)
    }
}

struct SaintPrayersList_Previews: PreviewProvider {
    static var previews: some View {
        SaintPrayersList()
    }
}
