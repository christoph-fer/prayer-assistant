//
//  PsalmsDetail.swift
//  Prayer Assistant
//
//  Created by Christopher Fernandes on 02/12/22.
//

import SwiftUI

struct PsalmsDetail: View {
    var prayer: psalm
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

struct PsalmsDetail_Previews: PreviewProvider {
    static var previews: some View {
        PsalmsDetail(prayer: psalmList.psalms.first!)
    }
}
