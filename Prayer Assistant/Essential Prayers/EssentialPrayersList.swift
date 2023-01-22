//
//  EssentialPrayersList.swift
//  catholically
//
//  Created by Christopher Fernandes on 22/01/23.
//

import SwiftUI

struct EssentialPrayersList: View {
    
    var essentialPrayer: [EssentialPrayer] = EssentialPrayerList.essentialPrayers
    @State var selectedPrayerId: UUID?
    
    var body: some View {
        List(essentialPrayer, id: \.id) { prayer in
            NavigationLink(destination: EssentialPrayersDetail(prayer: prayer) .navigationBarTitleDisplayMode(.large)
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
        .navigationTitle("Basic Prayers")
        .listStyle(.insetGrouped)
    }
}

struct EssentialPrayersList_Previews: PreviewProvider {
    static var previews: some View {
        EssentialPrayersList()
    }
}

