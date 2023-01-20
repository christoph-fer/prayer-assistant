//
//  ContentView.swift
//  Prayer Assistant
//
//  Created by Christopher Fernandes on 21/09/22.
//

import StoreKit
import SwiftUI
import Foundation


private let adaptiveColumns = [
    GridItem(.adaptive(minimum: 120),  spacing: 15)
]

private let adaptiveRows = [
    GridItem(.adaptive(minimum: 200),  spacing: 15)
]

extension UISplitViewController {
    open override func viewDidLoad() {
        super.viewDidLoad()
        self.show(.primary)
    }
}

extension View {
    @ViewBuilder func phoneOnlyNavigationView() -> some View {
        if UIDevice.current.userInterfaceIdiom == .phone {
            self.navigationViewStyle (.stack)
        } else {
            self
        }
    }
}



struct ContentView: View {
    @StateObject var viewModel = ViewModel()
    
    @Environment(\.colorScheme) var colorScheme
    
    @State private var searchText = ""
    
    @ObservedObject var settingsCategories = CategoriesModel()
    @State private var selectedCategory: Category?
    
    var essentialPrayer: [EssentialPrayer] = EssentialPrayerList.essentialPrayers
    var dailyPrayer: [DailyPrayer] = DailyPrayerList.dailyPrayers
    var marianPrayer: [MarianPrayer] = MarianPrayerList.marianPrayers
    var psalm: [psalm] = psalmList.psalms
    var saintPrayer: [SaintPrayer] = SaintPrayerList.saintPrayers
    
    var hymn: [Hymn] = HymnList.hymns
    
    @State var groupedHymns: [String: [String]] = [:]
    
    @State private var columnVisibility =
    NavigationSplitViewVisibility.all
    
    @State private var selection: String? = nil
    
    @State var isAnimated: Bool = false
    
    @State var scale = 1.0
    
    @StateObject var storekit = StoreKitManager()
    
    var body: some View {
        
        TabView {
            //            NavigationSplitView(columnVisibility: $columnVisibility) {
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
                                Text("A Catholic Prayer Companion")
                                    .padding(.leading)
                                    .multilineTextAlignment(.leading)
                                Spacer()
                                
                            }
                            LazyVGrid (columns: adaptiveColumns, alignment: .center, spacing: 15) {
                                //                                NavigationLink(tag: "Basic Prayers", selection: $selection) {
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
                                        //                                        Rectangle()
                                        //                                            .colorScheme( colorScheme == .dark ? .light : .dark)
                                        //                                            .frame(height: 130)
                                        //                                            .cornerRadius(15)
                                        //
                                        //                                            .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 15)
                                        //                                            )
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
                                        //                                        Rectangle()
                                        //                                            .colorScheme( colorScheme == .dark ? .light : .dark)
                                        //                                            .frame(height: 130)
                                        //                                            .cornerRadius(15)
                                        //
                                        //                                            .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 15)
                                        //                                            )
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
                                
                                //                                NavigationLink(destination: Stations()
                                //                                    .navigationTitle("Stations of the Cross")
                                //                                ) {
                                //                                    ZStack{
                                //                                        //                                        Rectangle()
                                //                                        //                                            .colorScheme( colorScheme == .dark ? .light : .dark)
                                //                                        //                                            .frame(height: 130)
                                //                                        //                                            .cornerRadius(15)
                                //                                        //
                                //                                        //                                            .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 15)
                                //                                        //                                            )
                                //                                        VStack {
                                //                                            HStack {
                                //                                                Image(systemName: "rectangle.stack")
                                //                                                Spacer()
                                //                                            }
                                //                                            Spacer()
                                //                                            HStack {
                                //                                                Text("Stations of the Cross")
                                //                                                    .font(.headline)
                                //                                                    .multilineTextAlignment(.leading)
                                //                                                Spacer()
                                //                                            }
                                //                                        }
                                //                                        .padding()
                                //                                    }
                                //                                    .frame(height: 130)
                                //                                    .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 15))
                                //                                    .shadow(color: Color(hue: 1.0, saturation: 0.0, brightness: 0.0, opacity: 0.05), radius: 10, x: 0, y: 10)
                                //                                }
                                //                                .buttonStyle(PlainButtonStyle())
                            }
                            .padding()
                            LazyVGrid (columns: adaptiveRows, alignment: .center, spacing: 12) {
                                //                                NavigationLink(destination: MarianPrayersList(marianPrayer: marianPrayer)
                                //                                )  {
                                //                                    ZStack{
                                //                                        //                                        Rectangle()
                                //                                        //                                            .colorScheme( colorScheme == .dark ? .light : .dark)
                                //                                        //                                            .frame(height: 50)
                                //                                        //                                            .cornerRadius(15)
                                //                                        //
                                //                                        //                                            .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 15)
                                //                                        //                                            )
                                //                                        HStack {
                                //
                                //                                            HStack {
                                //                                                Text("Marian Prayers")
                                //                                                    .font(.headline)
                                //                                                    .multilineTextAlignment(.leading)
                                //                                            }
                                //                                            Spacer()
                                //                                            HStack {
                                //                                                Image(systemName: "sparkles")
                                //                                            }
                                //                                        }
                                //                                        .padding()
                                //                                    }
                                //                                    .frame(height: 50)
                                //                                    .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 15))
                                //                                    .shadow(color: Color(hue: 1.0, saturation: 0.0, brightness: 0.0, opacity: 0.05), radius: 10, x: 0, y: 10)
                                //                                }
                                //                                .buttonStyle(PlainButtonStyle())
                                
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
                                        //                                    Rectangle()
                                        //                                        .colorScheme( colorScheme == .dark ? .light : .dark)
                                        //                                        .frame(height: 50)
                                        //                                        .cornerRadius(15)
                                        //
                                        //                                        .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 15)
                                        //                                        )
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
                                
                                
                                
                                //                                NavigationLink(destination: Stations()
                                //                                    .navigationTitle("Divine Mercy")
                                //                                ) {
                                //                                    ZStack{
                                //                                        //                                        Rectangle()
                                //                                        //                                            .colorScheme( colorScheme == .dark ? .light : .dark)
                                //                                        //                                            .frame(height: 50)
                                //                                        //                                            .cornerRadius(15)
                                //                                        //
                                //                                        //                                            .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 15)
                                //                                        //                                            )
                                //                                        HStack {
                                //
                                //                                            HStack {
                                //                                                Text("The Divine Mercy")
                                //                                                    .font(.headline)
                                //                                                    .multilineTextAlignment(.leading)
                                //                                            }
                                //                                            Spacer()
                                //                                            HStack {
                                //                                                Image(systemName: "hand.raised.fill")
                                //                                            }
                                //                                        }
                                //                                        .padding()
                                //                                    }
                                //                                    .frame(height: 50)
                                //                                    .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 15))
                                //                                    .shadow(color: Color(hue: 1.0, saturation: 0.0, brightness: 0.0, opacity: 0.05), radius: 10, x: 0, y: 10)
                                //                                }
                                //                                .buttonStyle(PlainButtonStyle())
                            }
                            .padding(.top, -10.0)
                            .padding(.leading)
                            .padding(.trailing)
                        }
                        //                        .navigationTitle("Prayer Assistant")
                    })
                )
                .navigationTitle("Prayer Assistant")
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
                    Text("Prayer Assistant")
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
                    
                    Spacer()
                    //
                    //                                        Button("Play") {
                    //                                            isAnimated.toggle()
                    //                                        }
                    //                                        .buttonStyle(.borderedProminent)
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
            //            .onAppear() {
            //                if UIDevice.current.userInterfaceIdiom == .pad {
            //                    DispatchQueue.main.async {
            //                        selection = "Basic Prayers"
            //                    }
            //                }
            //            }
            //            .navigationViewStyle(DoubleColumnNavigationViewStyle())
            //        content: {
            //                VStack (spacing: 10) {
            //                    Text("👋")
            //                        .font(.largeTitle)
            //                    Text("Hello there!")
            //                        .font(.title)
            //                        .fontWeight(.bold)
            //                    Text("Select a prayer on your left")
            //                        .opacity(0.7)
            //                }
            //                .navigationBarTitleDisplayMode(.large)
            //            } detail: {
            //                ZStack {
            //                    Text("Select a prayer to continue :)")
            //                }
            //                //            .navigationTitle("Prayer Assistant")
            //                .navigationBarTitleDisplayMode(.large)
            //            }
            //            .onAppear() {
            //                if UIDevice.current.userInterfaceIdiom == .pad {
            //                    DispatchQueue.main.async {
            //                        selection = "Basic Prayers"
            //                    }
            //                }
            //            }
            .tabItem {
                Label("Prayers", systemImage: "square.text.square.fill")
            }
            
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
                
                Text("Select a hymn to continue :)")
            }
            
            //        .searchable(text:$searchText, prompt: "Search for a hymn...") {
            //        }
            
            
            
            
            .tabItem{
                Label("Hymns", systemImage: "music.note.list")
            }
            
            ZStack {
                
                
                NavigationStack{
                    
                    ZStack {
                        GeometryReader{reader in
                            ZStack {
//                                Image("home-4")
//                                    .resizable()
//                                    .aspectRatio(contentMode: .fill)
//                                    .offset(y: -reader.frame(in: .global).minY)
//                                    .frame(width: UIScreen.main.bounds.width, height: reader.frame(in: .global).minY + 270)
//                                Rectangle()
//                                    .foregroundColor(.clear)        // Making rectangle transparent
//                                    .background(LinearGradient(gradient: Gradient(colors: [.clear, .white.opacity(1)]), startPoint: .top, endPoint: .bottom))
//                                    .offset(y: -reader.frame(in: .global).minY)
//                                    .frame(width: UIScreen.main.bounds.width, height: reader.frame(in: .global).minY + 270)
                                Circle()
                                    .foregroundColor(Color(red: 0.0, green: 0.45098039215686275, blue: 0.6431372549019608))
                                    .frame(width: 250)
                                    .offset(x: 50, y: -reader.frame(in: .global).minY - 200)
                                    .blur(radius: 100)
                                Circle()
                                    .foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0))
                                    .frame(width: 250)
                                    .offset(x: -100, y: -reader.frame(in: .global).minY - 250)
                                    .blur(radius: 100)
                                Circle()
                                    .foregroundColor(Color(red: 1.0, green: 0.7254901960784313, blue: 0.7254901960784313))
                                    .frame(width: 250)
                                    .offset(x: -100, y: -reader.frame(in: .global).minY - 200)
                                    .blur(radius: 100)
                               
                            }
                        }
                        
                        VStack {
                            ScrollView(.vertical, showsIndicators: false, content: {
                                VStack {
                                    HStack {
                                        Text("Hello there! 👋🏼 \n\nThanks for using Prayer Assistant! A lot of time and effort goes into developing this app. Moreover, this app is completely free without any ads. You can support Prayer Assistant by considering a small donation which would be deeply appriciated!\n\n – Christopher Fernandes")
                                            .frame(maxWidth: 420)
                                        Spacer()
                                    }
                                    HStack{
                                        Text("Developer, Prayer Assistant")
                                            .padding([.leading, .bottom], 18.0)
                                            .opacity(0.6)
                                        Spacer()
                                    }
                                    .onAppear {
                                        viewModel.fetchProducts()
                                    }
                                    
                                    
                                    //                            HStack {
                                    //                                Text("You have tipped a total: $0")
                                    //                                    .font(.callout)
                                    //                                    .fontWeight(.semibold)
                                    //                                Spacer()
                                    //                            }
                                    //                            .padding(.vertical)
                                    
                                    LazyVGrid (columns: adaptiveColumns, alignment: .center, spacing: 15) {
                                        ForEach(storekit.storeProducts) {
                                            product in Button {
                                                Task {
                                                    storekit.purchase(product)
                                                }
                                            } label: {
                                                ZStack {
                                                    VStack {
                                                        HStack {
                                                            Text(product.displayPrice)
                                                                .font(.headline)
                                                                .multilineTextAlignment(.leading)
                                                            Spacer()
                                                        }
                                                        Spacer()
                                                        HStack {
                                                            Text(product.displayName)
                                                                .font(.headline)
                                                                .multilineTextAlignment(.leading)
                                                            Spacer()
                                                        }
                                                    }
                                                    .padding()
                                                }
                                                .frame(height: 130)
                                                .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 15))
                                            }
                                            .buttonStyle(PlainButtonStyle())
                                            
                                        }
                                    }
                                }
                                .padding()
                                .navigationTitle("Donate")
                            })}
                        
                        
                    }
                    
                    
                    
                    
                }
            }
            
            
            .tabItem{
                Label("Donate", systemImage: "heart")
            }
            
        }
        
    }
    
}




//private var splashImageBackground: some View {
//
//    GeometryReader { geometry in
//        Image(colorScheme == .dark ? "home-4" : "home-dark-1")
//            .resizable()
//            .aspectRatio(contentMode: .fill)
//            .edgesIgnoringSafeArea(.all)
//
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


