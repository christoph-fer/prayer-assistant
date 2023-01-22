//
//  MainPage.swift
//  catholically
//
//  Created by Christopher Fernandes on 22/01/23.
//

import SwiftUI
import UIKit

struct NavigationUtil {
    static func popToRootView() {
        findNavigationController(viewController: UIApplication.shared.windows.filter { $0.isKeyWindow }.first?.rootViewController)?
            .popToRootViewController(animated: true)
    }
    static func findNavigationController(viewController: UIViewController?) -> UINavigationController? {
        guard let viewController = viewController else {
            return nil
        }
        if let navigationController = viewController as? UINavigationController {
            return navigationController
        }
        for childViewController in viewController.children {
            return findNavigationController(viewController: childViewController)
        }
        return nil
    }
}

private let adaptiveColumns = [
    GridItem(.adaptive(minimum: 120),  spacing: 15)
]

private let adaptiveRows = [
    GridItem(.adaptive(minimum: 200),  spacing: 15)
]

struct MainPage : View {
    
    // Pages
    var essentialPrayer: [EssentialPrayer] = EssentialPrayerList.essentialPrayers
    var dailyPrayer: [DailyPrayer] = DailyPrayerList.dailyPrayers
    var marianPrayer: [MarianPrayer] = MarianPrayerList.marianPrayers
    var psalm: [psalm] = psalmList.psalms
    var saintPrayer: [SaintPrayer] = SaintPrayerList.saintPrayers
    
    @State var isAnimated: Bool = false
    
    // Color scheme
    @Environment(\.colorScheme) var colorScheme
    
    //@Environment (\.horizontalSizeClass) var horizontalSizeClass: UserInterfaceSizeClass?
    
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    
    //    @ViewBuilder func phoneOnlyNavigationView() -> some View {
    //        if .horizontalSizeClass == .compact {
    //            self.navigationViewStyle(.stack)
    //        } else {
    //            self
    //        }
    //    }
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                Image(colorScheme == .dark ? "home-dark-3b" : "home-4")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                    .background(.thinMaterial)
                
            }
            .overlay(
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack {
                        HStack {
                            Text("the catholic prayer companion.")
                                .padding(.leading)
                                .multilineTextAlignment(.leading)
                            Spacer()
                            
                        }
                        LazyVGrid (columns: adaptiveColumns, alignment: .center, spacing: 15) {
                            NavigationLink {
                                EssentialPrayersList(essentialPrayer: essentialPrayer)
                            } label: {
                                ZStack {
                                    VStack {
                                        HStack {
                                            Image(systemName: "hands.sparkles.fill")
                                            Spacer()
                                        }
                                        Spacer()
                                        HStack {
                                            Text("Basic Prayers")
                                                .font(.headline)
                                                .multilineTextAlignment(.leading)
                                            Spacer()
                                        }
                                    }
                                    .padding()
                                }
                                .frame(height: 130)
                                .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 15))
                                .shadow(color: Color(hue: 1.0, saturation: 0.0, brightness: 0.0, opacity: 0.05), radius: 10, x: 0, y: 10)
                            }
                            .buttonStyle(PlainButtonStyle())
                            
                            NavigationLink(destination: DailyPrayersList(dailyPrayer: dailyPrayer)
                            )  {
                                ZStack{
                                    VStack {
                                        HStack {
                                            Image(systemName: "sun.max.fill")
                                            Spacer()
                                        }
                                        Spacer()
                                        HStack {
                                            Text("Daily Prayers")
                                                .font(.headline)
                                                .multilineTextAlignment(.leading)
                                            Spacer()
                                        }
                                    }
                                    .padding()
                                }
                                .frame(height: 130)
                                .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 15))
                                .shadow(color: Color(hue: 1.0, saturation: 0.0, brightness: 0.0, opacity: 0.05), radius: 10, x: 0, y: 10)
                            }
                            .buttonStyle(PlainButtonStyle())
                            
                            NavigationLink(destination: Rosary().navigationTitle("Holy Rosary")) {
                                ZStack{
                                    
                                    VStack {
                                        HStack {
                                            Image(systemName: "list.star")
                                            Spacer()
                                        }
                                        Spacer()
                                        HStack {
                                            Text("Holy Rosary")
                                                .font(.headline)
                                                .multilineTextAlignment(.leading)
                                            Spacer()
                                        }
                                    }
                                    .padding()
                                }
                                .frame(height: 130)
                                .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 15))
                                .shadow(color: Color(hue: 1.0, saturation: 0.0, brightness: 0.0, opacity: 0.05), radius: 10, x: 0, y: 10)
                            }
                            .buttonStyle(PlainButtonStyle())
                            
                            NavigationLink(destination: MarianPrayersList(marianPrayer: marianPrayer)
                            ) {
                                ZStack{
                                    VStack {
                                        HStack {
                                            Image(systemName: "sparkles")
                                            Spacer()
                                        }
                                        Spacer()
                                        HStack {
                                            Text("Marian Prayers")
                                                .font(.headline)
                                                .multilineTextAlignment(.leading)
                                            Spacer()
                                        }
                                    }
                                    .padding()
                                }
                                .frame(height: 130)
                                .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 15))
                                .shadow(color: Color(hue: 1.0, saturation: 0.0, brightness: 0.0, opacity: 0.05), radius: 10, x: 0, y: 10)
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                        .padding()
                        LazyVGrid (columns: adaptiveRows, alignment: .center, spacing: 12) {
                            
                            NavigationLink(destination: PsalmsList(psalm: psalm)
                            )  {
                                
                                ZStack{
                                    HStack {
                                        
                                        
                                        HStack {
                                            Text("Popular Psalms")
                                                .font(.headline)
                                                .multilineTextAlignment(.leading)
                                        }
                                        Spacer()
                                        HStack {
                                            Image(systemName: "music.note.list")
                                        }
                                    }
                                    .padding()
                                }
                                .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 15))
                                .shadow(color: Color(hue: 1.0, saturation: 0.0, brightness: 0.0, opacity: 0.05), radius: 10, x: 0, y: 10)
                            }
                            .buttonStyle(PlainButtonStyle())
                            
                            NavigationLink(destination: SaintPrayersList(saintPrayer: saintPrayer)
                            ) {
                                ZStack{
                                    HStack {
                                        HStack {
                                            Text("Prayers to Saints")
                                                .font(.headline)
                                                .multilineTextAlignment(.leading)
                                        }
                                        Spacer()
                                        HStack {
                                            Image(systemName: "person.fill")
                                        }
                                    }
                                    .padding()
                                }
                                .frame(height: 50)
                                .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 15))
                                .shadow(color: Color(hue: 1.0, saturation: 0.0, brightness: 0.0, opacity: 0.05), radius: 10, x: 0, y: 10)
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                        .padding(.top, -10.0)
                        .padding(.leading)
                        .padding(.trailing)
                    }
                })
            )
            .navigationTitle("catholicism.")
            .navigationBarTitleDisplayMode(.large)
            
            VStack (spacing: 4) {
                
                Spacer()
                Text("Welcome to 👋")
                    .font(.system(.title3, design: .rounded))
                    .offset(x: 0, y: isAnimated ? 0 : 20)
                    .opacity(isAnimated ? 1 : 0)
                //.blur(radius: isAnimated ? 0 : 3)
                
                    .animation(
                        Animation
                            .spring(response: 1, blendDuration: 5)
                    )
                Text("catholicism.")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                //.blur(radius: isAnimated ? 0 : 3)
                    .offset(x: 0, y: isAnimated ? 0 : 40)
                    .opacity(isAnimated ? 1 : 0)
                    .animation(
                        Animation
                            .spring(response: 1, blendDuration: 5)
                            .delay(0.05)
                    )
                
                if horizontalSizeClass == .compact {
                    Button("start praying.", action: {
                        NavigationUtil.popToRootView()
                    })
                    .buttonStyle(.borderedProminent)
                        .cornerRadius(20).opacity(1)
                        .padding(.top, 40.0)
                        //.fontWeight(.bold)
                    //.font(.system(.subheadline, design: .rounded))
                        .opacity(isAnimated ? 1 : 0)
                        .animation(
                            Animation
                                .spring(blendDuration: 1)
                                .delay(1)
                        )
                } else {
                                    Text("Select a prayer on your left :)")
                                        .opacity(0.7)
                                        .padding()
                                        .font(.system(.subheadline, design: .rounded))
                                        .opacity(isAnimated ? 1 : 0)
                                        .animation(
                                            Animation
                                                .spring(blendDuration: 1)
                                                .delay(1)
                                        )
                }
                Spacer()
            }
            .padding(.bottom, 50.0)
            .onAppear {
                withAnimation {
                    isAnimated = true
                }
            }
            
            
            ZStack {
                Text("Select a prayer to continue :)")
            }
        }
        //.phoneOnlyNavigationView()
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
