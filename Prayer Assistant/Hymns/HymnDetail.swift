//
//  HymnDetail.swift
//  Prayer Assistant
//
//  Created by Christopher Fernandes on 19/10/22.
//

import SwiftUI

struct HymnDetail: View {
    
    var hymn: Hymn
    var body: some View {
        HStack {
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack {
                    HStack {
                        Text(.init(hymn.hymnContent))
                            .font(.title2)
                        Spacer()
                    }
                    Spacer()
                }
                .padding()
            }
            )
        }
        .navigationTitle(hymn.hymnName)
        .navigationBarTitleDisplayMode(.large)
    }
}

struct HymnDetail_Previews: PreviewProvider {
    static var previews: some View {
        HymnDetail(hymn: HymnList.hymns.first!)
    }
}
