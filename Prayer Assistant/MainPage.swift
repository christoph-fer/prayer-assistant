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
    var hymn: [Hymn] = HymnList.hymns
    var station: [Station] = StationsList.stations
    
    @State var isAnimated: Bool = false
    
    @State private var showingAddView = false
    @State var showingSheet: Bool = false
    
    @State private var lastHostingView: UIView!
    
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
                            if #available(iOS 16.1, *) {
                                Text("A Catholic Prayer Companion")
                                
                                    .padding(.leading)
                                    .multilineTextAlignment(.leading)
                                    .fontDesign(.rounded)
                            } else {
                                Text("A Catholic Prayer Companion")
                                
                                    .padding(.leading)
                                    .multilineTextAlignment(.leading)
                            }
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
                                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 15))
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
                                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 15))
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
                                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 15))
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
                                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 15))
                                .shadow(color: Color(hue: 1.0, saturation: 0.0, brightness: 0.0, opacity: 0.05), radius: 10, x: 0, y: 10)
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                        .padding()
                        LazyVGrid (columns: adaptiveRows, alignment: .center, spacing: 12) {
                            
                            NavigationLink(destination: Stations(station: station).navigationTitle("Stations of the Cross")
                            )  {
                                
                                ZStack{
                                    HStack {
                                        
                                        
                                        HStack {
                                            Text("Stations of the Cross")
                                                .font(.headline)
                                                .multilineTextAlignment(.leading)
                                        }
                                        Spacer()
                                        HStack {
                                            Image(systemName: "rectangle.stack")
                                        }
                                    }
                                    .padding()
                                }
                                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 15))
                                .shadow(color: Color(hue: 1.0, saturation: 0.0, brightness: 0.0, opacity: 0.05), radius: 10, x: 0, y: 10)
                            }
                            .buttonStyle(PlainButtonStyle())
                            
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
                                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 15))
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
                                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 15))
                                .shadow(color: Color(hue: 1.0, saturation: 0.0, brightness: 0.0, opacity: 0.05), radius: 10, x: 0, y: 10)
                            }
                            .buttonStyle(PlainButtonStyle())
                            
                            NavigationLink(destination: PersonalPrayers().navigationTitle("Your Prayers")) {
                                ZStack{
                                    HStack {
                                        HStack {
                                            Text("Write your prayer")
                                                .font(.headline)
                                                .multilineTextAlignment(.leading)
                                        }
                                        Spacer()
                                        HStack {
                                            Image(systemName: "square.and.pencil")
                                        }
                                    }
                                    .padding()
                                }
                                .frame(height: 50)
                                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 15))
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
            .navigationTitle("BetterPray")
            .navigationBarTitleDisplayMode(.large)
//            .toolbar {
//                ToolbarItem(placement: .automatic, content: {
//                    Button(action: {
//                        showingSheet.toggle()
//                    }, label: {
//                        Image(systemName: "heart.circle.fill").symbolRenderingMode(.hierarchical)
//                    }).sheet(isPresented: $showingSheet)  {
//                        NavigationView {
//                            
//                            List {
//                                HStack {
//                                    Image(systemName: "sparkles").symbolRenderingMode(.hierarchical)
//                                    Text("What's new")
//                                }
//                                HStack {
//                                    Image(systemName: "star.leadinghalf.filled").symbolRenderingMode(.hierarchical)
//                                    Text("Rate this app")
//                                }
//                            }
//
//                            .navigationTitle("About")
//                            .toolbar{
//                                ToolbarItem(placement: .destructiveAction){
//                                    Button(action: {
//                                        self.showingSheet = false
//                                    }
//                                    ) {
//                                        Image(systemName: "xmark.circle.fill")
//                                            .font(.system(size: 20))
//                                            .opacity(0.3)
//                                            .padding(.top, 10)
//                                    }
//                                    .buttonStyle(.plain)
//                                }
//                            }
//                            .listStyle(.automatic)
//
//                        }
//                        .presentationDetents([.large])
//                        .presentationDragIndicator(.visible)
//                        .background(.regularMaterial)
//                    }
//                })
//            }
            
            VStack (spacing: 4) {
                
                Spacer()
                Text("Welcome to 👋")
                    .font(.system(.title3, design: .rounded))
                    .offset(x: 0, y: isAnimated ? 0 : 20)
                    .opacity(isAnimated ? 1 : 0)
                    .blur(radius: isAnimated ? 0 : 3)
                    .animation(Animation.spring(response: 1, blendDuration: 5.0), value: isAnimated)
                Text("BetterPray")
                    .font(.system(.largeTitle, design: .default))
                    .fontWeight(.bold)
                    .offset(x: 0, y: isAnimated ? 0 : 40)
                    .blur(radius: isAnimated ? 0 : 3)
                    .opacity(isAnimated ? 1 : 0)
                    .animation(Animation.spring(response: 1, blendDuration: 5.0).delay(0.1), value: isAnimated)
                
                if horizontalSizeClass == .compact {
                    Button {
                        NavigationUtil.popToRootView()
                    } label: {
                        Label ("Let's Pray ", systemImage: "hands.sparkles.fill")
                    }.fontWeight(.semibold)
                        .buttonStyle(.borderedProminent).cornerRadius(20)
                        .shadow(color: colorScheme == .dark ? .accentColor.opacity(0.6) : .accentColor.opacity(0.5), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, y: 7)
                        .opacity(isAnimated ? 1 : 0)
                        .padding(.top, 40.0)
                        .animation(Animation.spring(blendDuration: 1.0).delay(1), value: isAnimated)
                    
                } else {
                    Text("Select a prayer on your left :)")
                        .opacity(0.7)
                        .padding()
                        .font(.system(.subheadline, design: .rounded))
                        .opacity(isAnimated ? 1 : 0)
                        .animation(Animation.spring(blendDuration: 1.0).delay(1), value: isAnimated)
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
        //        //.phoneOnlyNavigationView()
        //        #endif
    }
}

struct ProfileView: View {
    var body: some View {
        Circle()
            .size(width: 40, height: 40)
        Image("iOSbetterpray")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}

struct BarContent: View {
    var body: some View {
        Button {
            print("Profile tapped")
        } label: {
            ProfilePicture()
        }
    }
}

struct ProfilePicture: View {
    var body: some View {
        Circle()
            .fill(
                LinearGradient(
                    gradient: Gradient(colors: [.red, .blue]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
            )
            .frame(width: 40, height: 40)
            .padding(.horizontal)
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}
