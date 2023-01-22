//
//  ContentView.swift
//  Prayer Assistant
//
//  Created by Christopher Fernandes on 21/09/22.
//

import StoreKit
import SwiftUI
import Foundation

extension UISplitViewController {
    open override func viewDidLoad() {
        super.viewDidLoad()
        self.show(.primary)
    }
}

//extension View {
//    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
//    
//    @ViewBuilder func phoneOnlyNavigationView() -> some View {
//        if UserInterfaceSizeClass(.horizontalSizeClass) == .compact {
//            self.navigationViewStyle(.stack)
//        } else {
//            self
//        }
//    }
//}



struct ContentView: View {
    
    @State private var prayers = UUID()
    @State private var hymns = UUID()
    @State private var donate = UUID()
    
    @State private var tabSelection = 1
    @State private var tappedTwice = false
    
    var body: some View {
        
        var handler: Binding<Int> { Binding(
            get: { self.tabSelection },
            set: {
                if $0 == self.tabSelection {
                    tappedTwice = true
                }
                self.tabSelection = $0
            }
        )}
        
        return TabView(selection: handler) {
            MainPage().id(prayers)
//                .onChange(of: tappedTwice, perform: { tappedTwice in
//                guard tappedTwice else { return }
//                prayers = UUID()
//                self.tappedTwice = false
//            })
            .tabItem {
                Label("Prayers", systemImage: "square.text.square.fill")
            }
            .tag(1)
            
            Hymns().id(hymns)
                .tabItem{
                    Label("Hymns", systemImage: "music.note.list")
                }
                .tag(2)
            
            Donate().id(donate)
                .tabItem{
                    Label("Donate", systemImage: "heart")
                }
                .tag(3)
            
        }
        
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


