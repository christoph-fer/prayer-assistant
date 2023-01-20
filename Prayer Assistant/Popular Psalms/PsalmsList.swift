//
//  PsalmsList.swift
//  Prayer Assistant
//
//  Created by Christopher Fernandes on 02/12/22.
//

import SwiftUI

struct PsalmsList: View {
    var psalm: [psalm] = psalmList.psalms
    @State var selectedPrayerId: UUID?
    
    
    
    
    
    
    @Environment (\.verticalSizeClass) var verticalSizeClass
    @Environment (\.horizontalSizeClass) var horizontalSizeClass
    
    
    
    
    
    
    
    
    var body: some View {
        List(psalm, id: \.id) { prayer in
            NavigationLink(destination: PsalmsDetail(prayer: prayer) .navigationBarTitleDisplayMode(.large)
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
        }
//        .onAppear {
//            if UIDevice.current.userInterfaceIdiom == .pad  {
//                DispatchQueue.main.async  {
//                    selectedPrayerId = psalmList.psalms.first?.id
//                }
//            }
//        }
//        .navigationTitle(horizontalSizeClass == .compact ? "Portrait" : "Landscape")
        .navigationTitle("Popular Psalms")
        .listStyle(.insetGrouped)
    }
    
}

struct PsalmsList_Previews: PreviewProvider {
    static var previews: some View {
        PsalmsList()
    }
}
