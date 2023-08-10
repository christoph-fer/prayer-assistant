//
//  StationDetail.swift
//  Prayer Assistant
//
//  Created by Christopher Fernandes on 05/10/22.
//

import SwiftUI

struct StationDetail: View {
    @Namespace var namespace
    var station: Station
    @State private var topExpanded: Bool = true
    
    @State private var showingSheet = false
    @State private var showingHailMary = false
    @State private var showingGloryBe = false
    
    @Environment (\.horizontalSizeClass) var horizontalSizeClass: UserInterfaceSizeClass?
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack {
                if horizontalSizeClass == .compact {
                    ZStack {
                        GeometryReader{reader in
                            ZStack {
                                Image(station.stationPic)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .offset(y: -reader.frame(in: .global).minY)
                                    .frame(width: UIScreen.main.bounds.width, height: reader.frame(in: .global).minY + 470)
                                
                                Image(station.stationPic)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .blur(radius: 10, opaque: true)
                                    .mask(
                                        LinearGradient(gradient: Gradient( stops: [
                                            .init(color: Color .white, location: 0.1),
                                            .init(color: Color .white, location: 0.2),
                                            .init(color: Color .white.opacity(0), location: 0.5)
                                        ]
                                        ),startPoint: .bottom,
                                          endPoint: .top)
                                    )
                                    .offset(y: -reader.frame(in: .global).minY)
                                    .frame(width: UIScreen.main.bounds.width, height: reader.frame(in: .global).minY + 470)
                                
                                Rectangle()
                                    .foregroundColor(.clear)        // Making rectangle transparent
                                    .background(LinearGradient(gradient: Gradient(colors: [.clear, .black.opacity(0.3)]), startPoint: .top, endPoint: .bottom))
                                    .offset(y: -reader.frame(in: .global).minY)
                                    .frame(width: UIScreen.main.bounds.width, height: reader.frame(in: .global).minY + 470)
                            }
                        }
                        VStack(spacing: 10) {
                            Spacer()
                            HStack {
                                Text(station.stationName)
                                    .font(.callout)
                                    .opacity(0.7)
                                    .fontWeight(.semibold)
                                    .textCase(.uppercase)
                                    .kerning(0.2)
                                    .foregroundColor(.white)
                                Spacer()
                            }
                            HStack {
                                Text(station.stationDesc)
                                    .font(.largeTitle)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                Spacer()
                            }
                        }
                        .padding()
                    }
                    .frame(height: 460)
                }
               
            }
            VStack {
//                VStack(spacing: 10) {
//                    Spacer()
//                    HStack {
//                        Text(station.stationName)
//                            .font(.callout)
//                            .opacity(0.7)
//                            .fontWeight(.semibold)
//                            .textCase(.uppercase)
//                            .kerning(0.2)
//                            .foregroundColor(.white)
//                        Spacer()
//                    }
//                    HStack {
//                        Text(station.stationDesc)
//                            .font(.largeTitle)
//                            .fontWeight(.bold)
//                            .foregroundColor(.white)
//                        Spacer()
//                    }
//                }
//                .padding(.bottom)
                
                HStack {
                    Text("**Leader:** We adore You, O Christ, and we praise You. \n\n**All:**  Because, by Your holy cross, You have redeemed the world.\n")
                        .font(.title2)
                    Spacer()
                }
                HStack {
                    Text(.init(station.stationLeader))
                        .font(.title2)
                    Spacer()
                }
                HStack {
                    Text(.init(station.stationAll))
                        .font(.title2)
                    Spacer()
                }
                HStack (spacing: 12) {
                    Button(action: {
                        showingSheet.toggle()
                    }) {
                        Text("Our Father")
                    }.sheet(isPresented: $showingSheet)  {
                        
                        NavigationView {
                            VStack {
                                HStack {
                                    Text("Our Father, Who art in heaven, Hallowed be Thy Name. Thy Kingdom come. Thy Will be done, on earth as it is in Heaven. Give us this day our daily bread. And forgive us our trespasses, as we forgive those who trespass against us. And lead us not into temptation, but deliver us from evil. Amen.")
                                        .font(.title2)
                                        .toolbar{
                                            ToolbarItem(placement: .destructiveAction){
                                                Button(action: {
                                                    self.showingSheet = false
                                                }
                                                ) {
                                                    Image(systemName: "xmark.circle.fill")
                                                        .font(.system(size: 20))
                                                        .opacity(0.3)
                                                        .padding(.top, 10)
                                                }
                                                .buttonStyle(.plain)
                                            }
                                        }
                                    
                                    
                                    Spacer()
                                    
                                }
                                Spacer()
                                
                            }
                            .padding()
                            .navigationTitle("Our Father")
                            
                        }
                        .presentationDetents([.medium, .large])
                        .presentationDragIndicator(.visible)
                        .background(.regularMaterial)
                        
                    }
                    .buttonStyle(.borderedProminent)
                    .cornerRadius(20)
                    
                    Button(action: {
                        showingHailMary.toggle()
                    }) {
                        Text("Hail Mary")
                    }.sheet(isPresented: $showingHailMary)  {
                        
                        NavigationView {
                            VStack {
                                HStack {
                                    Text("Hail Mary, Full of Grace, The Lord is with thee. Blessed art thou among women, and blessed is the fruit of thy womb, Jesus. Holy Mary, Mother of God, pray for us sinners now, and at the hour of our death. Amen.")
                                        .font(.title2)
                                        .toolbar{
                                            ToolbarItem(placement: .destructiveAction){
                                                Button(action: {
                                                    self.showingHailMary = false
                                                }
                                                ) {
                                                    Image(systemName: "xmark.circle.fill")
                                                        .font(.system(size: 20))
                                                        .opacity(0.3)
                                                        .padding(.top, 10)
                                                }
                                                .buttonStyle(.plain)
                                            }
                                        }
                                    
                                    
                                    Spacer()
                                    
                                }
                                Spacer()
                                
                            }
                            .padding()
                            .navigationTitle("Hail Mary")
                            
                        }
                        .presentationDetents([.medium, .large])
                        .presentationDragIndicator(.visible)
                        .background(.regularMaterial)
                        
                    }
                    .buttonStyle(.borderedProminent)
                    .cornerRadius(20)
                    
                    Button(action: {
                        showingGloryBe.toggle()
                    }) {
                        Text("Glory Be")
                    }.sheet(isPresented: $showingGloryBe)  {
                        
                        NavigationView {
                            VStack {
                                HStack {
                                    Text("Glory be to the Father, and to the Son, and to the Holy Spirit, as it was in the beginning, is now, and ever shall be, world without end. Amen.")
                                        .font(.title2)
                                        .toolbar{
                                            ToolbarItem(placement: .destructiveAction){
                                                Button(action: {
                                                    self.showingGloryBe = false
                                                }
                                                ) {
                                                    Image(systemName: "xmark.circle.fill")
                                                        .font(.system(size: 20))
                                                        .opacity(0.3)
                                                        .padding(.top, 10)
                                                }
                                                .buttonStyle(.plain)
                                            }
                                        }
                                    
                                    
                                    Spacer()
                                    
                                }
                                Spacer()
                                
                            }
                            .padding()
                            .navigationTitle("Glory Be")
                            
                        }
                        .presentationDetents([.medium, .large])
                        .presentationDragIndicator(.visible)
                        .background(.regularMaterial)
                        
                    }
                    .buttonStyle(.borderedProminent)
                    .cornerRadius(20)
                    
                    Spacer()
                    
                }
                .padding(.vertical)
                HStack {
                    Text(station.stationEnd)
                        .font(.title3)
                        //.multilineTextAlignment(.center)
                        .opacity(0.6)
                    Spacer()
                }

                
            }
            .padding()
            //.padding(.top, 10)
            
            .background(Color(UIColor.systemBackground))
        })
    }
}

struct StationDetail_Previews: PreviewProvider {
    static var previews: some View {
        StationDetail(station: StationsList.stations.first!)
    }
}
