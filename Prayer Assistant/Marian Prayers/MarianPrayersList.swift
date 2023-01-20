//
//  MarianPrayersList.swift
//  Prayer Assistant
//
//  Created by Christopher Fernandes on 01/12/22.
//

import SwiftUI

struct MarianPrayersList: View {
    var marianPrayer: [MarianPrayer] = MarianPrayerList.marianPrayers
    @State var selectedPrayerId: UUID?
    
    @Environment (\.verticalSizeClass) var verticalSizeClass: UserInterfaceSizeClass?
    @Environment (\.horizontalSizeClass) var horizontalSizeClass: UserInterfaceSizeClass?
    
    
    var body: some View {
        List(marianPrayer, id: \.id) { prayer in
            NavigationLink(destination: MarianPrayersDetail(prayer: prayer) .navigationBarTitleDisplayMode(.large)
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
//                        selectedPrayerId = MarianPrayerList.marianPrayers.first?.id
//                    }
//                }
//
//            }
        }
        .navigationTitle("Marian Prayers")
        .listStyle(.insetGrouped)
    }
}

struct MarianPrayersList_Previews: PreviewProvider {
    static var previews: some View {
        MarianPrayersList()
    }
}
