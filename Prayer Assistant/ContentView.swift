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
    
    // Variable to trigger WhatsNew Screen
    @State private var showWhatsNew = false
    
    // Get current Version of the App
    func getCurrentAppVersion() -> String {
        let appVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"]
        let version = (appVersion as! String)
        
        return version
    }
    
    // Check if app if app has been started after update
    func checkForUpdate() {
        let version = getCurrentAppVersion()
        let savedVersion = UserDefaults.standard.string(forKey: "savedVersion")
        
        if savedVersion == version {
            print("App is up to date!")
        } else {
            
            // Toogle to show WhatsNew Screen as Modal
            self.showWhatsNew.toggle()
            UserDefaults.standard.set(version, forKey: "savedVersion")
        }
    }
    
    
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
            
            //            Donate().id(donate)
            //                .tabItem{
            //                    Label("Donate", systemImage: "heart")
            //                }
            //                .tag(3)
            
        }
        .sheet(isPresented: $showWhatsNew, content: { WhatsNew() }) // Show Sheet
        .onAppear(perform: checkForUpdate) // Run checkForUpdate when View Appears
        
    }
    
    
}

struct WhatsNew: View {

    // Variable to Dismiss Modal
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {

        return VStack(alignment: .center) {
            Text("What's New in BetterPray")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .bold()
                .padding()
                .padding()
                .padding()
                .padding()
            
            VStack(alignment: .leading) {
                
               
                HStack (spacing: 20) {
                    Image(systemName: "sparkles.rectangle.stack.fill").foregroundColor(Color("AccentColor"))
                        .symbolRenderingMode(.hierarchical)
                        .font(.largeTitle)
                    VStack(alignment: .leading) {
                        Text("Added 'Stations of the Cross'")
                            .bold()
                        Spacer()
                            .frame(height: 5)
                        Text("Refer to all 14 stations with pictures")
                            .opacity(0.6)
                    }
                }
                .padding(.horizontal)
                .padding(.horizontal)
                
                Spacer()
                    .frame(height: 30)
                
                HStack (spacing: 20) {
                    Image(systemName: "text.bubble.fill").foregroundColor(Color("AccentColor")).symbolRenderingMode(.hierarchical)
                        .font(.largeTitle)
                    VStack(alignment: .leading) {
                        Text("This 'What's New' sheet")
                            .bold()
                        Spacer()
                            .frame(height: 5)
                        Text("See what's new in each BetterPray update")
                            .opacity(0.6)
                    }
                }
                .padding(.horizontal)
                .padding(.horizontal)
            }
            
            
            
            Spacer()

            // Dismiss Button
            Button(action: { self.presentationMode.wrappedValue.dismiss() }, label: {
                Text("Continue")
                    .bold()
                    .frame(width: 300.0, height: 40.0)
                    
            })
            .cornerRadius(15)
            .buttonStyle(.borderedProminent)
                .padding()
                .padding()
                .padding()
                .padding()
                
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


