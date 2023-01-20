//
//  SaintPrayersDetail.swift
//  Prayer Assistant
//
//  Created by Christopher Fernandes on 08/12/22.
//

import SwiftUI

struct SaintPrayersDetail: View {
    var prayer: SaintPrayer
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

struct SaintPrayersDetail_Previews: PreviewProvider {
    static var previews: some View {
        SaintPrayersDetail(prayer: SaintPrayerList.saintPrayers.first!)
    }
}
