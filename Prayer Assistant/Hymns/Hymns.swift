//
//  Hymns.swift
//  catholically
//
//  Created by Christopher Fernandes on 22/01/23.
//

import SwiftUI

struct Hymns : View {
    
    var hymn: [Hymn] = HymnList.hymns
    
    var body: some View {
        NavigationView{
            
            List(hymn, id: \.id) { hymn in
                NavigationLink(destination: HymnDetail(hymn: hymn)
                    .navigationTitle(hymn.hymnName)
                    .navigationBarTitleDisplayMode(.large), label: {
                        HStack(spacing: 15) {
                            
                            VStack(alignment: .leading, spacing: 5) {
                                Text(hymn.hymnName)
                                    .font(.body)
                                    .lineLimit(1)
                            }
                        }
                    }
                )
            }
            .navigationTitle("Hymns")
            .navigationBarTitleDisplayMode(.large)
            .background(.thinMaterial)
            .navigationBarTitle(Text("Hymns"), displayMode: NavigationBarItem.TitleDisplayMode.large)
            
            Text("Select a hymn to continue :)")
        }
    }
}
