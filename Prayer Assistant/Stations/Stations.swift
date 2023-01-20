//
//  Stations.swift
//  Prayer Assistant
//
//  Created by Christopher Fernandes on 27/09/22.
//

import SwiftUI

struct Stations: View {
    var station: [Station] = StationsList.stations

    
    @Namespace var namespace

    
    var body: some View {
        GeometryReader { geometry in
            TabView{
                VStack {
                    VStack {
                        ZStack {
                            Image("cross-pic-5")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: geometry.size.width - 30)
                                .matchedGeometryEffect(id: "station", in: namespace)
                            VStack {
                                Spacer()
                                HStack {
                                    VStack (spacing: 10){
                                        
                                        HStack {
                                            Text("Preparatory Prayer")
                                                .font(.callout)
                                                .opacity(0.5)
                                                .fontWeight(.semibold)
                                                .textCase(.uppercase)
                                                .kerning(0.2)
                                            Spacer()
                                        }
                                        
                                        HStack {
                                            Text("In honour of the Passion and Death of our Lord")
                                                .font(.title)
                                                .fontWeight(.bold)
                                                .multilineTextAlignment(.leading)
                                            Spacer()
                                        }
                                        
                                        
                                    }
                                    Spacer()
                                    Button(action: {}, label: {
                                        NavigationLink(destination: StationsStart()
                                            .navigationBarTitleDisplayMode(.large)
                                        ) {
                                            Text("Read")
                                                .foregroundColor(.white)
                                        }
                                    }
                                    )
                                    .buttonStyle(.borderedProminent)
                                    .cornerRadius(20)
                                }
                                .padding(20)
                                .background(.thinMaterial)
                                .cornerRadius(15)
                                .padding(16)
                            }
                        }
                    }
                    //            .padding()
                    .background(.thinMaterial)
                    .cornerRadius(20)
                    //            .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 7)
                    
                }
                .padding(.top, 10.0)
                .padding(.bottom, 60.0)
                .padding(.horizontal, 20.0);
                
                ForEach(station, id: \.id) { station in
                    NavigationLink(destination: StationDetail(station: station), label: {
                            VStack {
                                VStack {
                                    ZStack {
                                        Image(station.stationPic)
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: geometry.size.width - 30)
                                        VStack {
                                            Spacer()
                                            HStack {
                                                VStack (spacing: 10){
                                                    
                                                    HStack {
                                                        Text(station.stationName)
                                                            .font(.callout)
                                                            .opacity(0.5)
                                                            .fontWeight(.semibold)
                                                            .textCase(.uppercase)
                                                            .kerning(0.2)
                                                        Spacer()
                                                    }
                                                    
                                                    HStack {
                                                        Text(station.stationDesc)
                                                            .font(.title)
                                                            .fontWeight(.bold)
                                                            .multilineTextAlignment(.leading)
                                                        Spacer()
                                                    }
                                                    
                                                    
                                                }
                                                Spacer()
                                                Button(action: {}, label: {
                                                    NavigationLink(destination: StationDetail(station: station)
                                                    ) {
                                                        Text("Read")
                                                            .foregroundColor(.white)
                                                    }
                                                }
                                                )
                                                .buttonStyle(.borderedProminent)
                                                .cornerRadius(20)
                                            }
                                            .padding(20)
                                            .background(.thinMaterial)
                                            .cornerRadius(15)
                                            .padding(16)
                                        }
                                    }
                                }
                                //            .padding()
                                .background(.thinMaterial)
                                .cornerRadius(20)
                                //            .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 7)
                                
                            }
                            .padding(.top, 10.0)
                            .padding(.bottom, 60.0)
                            .padding(.horizontal, 20.0)
                        }
                    )
                }
                .buttonStyle(PlainButtonStyle())
            }
            .padding(.bottom, 10)
            .tabViewStyle(.page(indexDisplayMode: .always))
            .indexViewStyle(.page(backgroundDisplayMode: .always))
            //        .background(.regularMaterial)
        }
        
    }
    
}

struct Stations_Previews: PreviewProvider {
    static var previews: some View {
        Stations()
    }
}

//struct StationsView: View {
//
//    @State private var isClicked: Bool = false
//    let title: String
//    let desc: String
//
//    var body: some View {
//        VStack {
//            VStack {
//                ZStack {
//
//                    Image("cross-pic-2")
//                        .resizable()
//                        .aspectRatio(contentMode: .fill)
//                        .frame(width: SGConvenience.deviceWidth.main.bounds.width - 30)
//                    VStack {
//                        Spacer()
//                        HStack {
//                            VStack (spacing: 10){
//
//                                HStack {
//                                    Text(title)
//                                        .font(.callout)
//                                        .opacity(0.5)
//                                        .fontWeight(.semibold)
//                                        .textCase(.uppercase)
//                                        .kerning(0.2)
//                                    Spacer()
//                                }
//
//                                HStack {
//                                    Text(desc)
//                                        .font(.title)
//                                        .fontWeight(.bold)
//                                    Spacer()
//                                }
//
//
//                            }
//                            Spacer()
//                            Button("Read") {
//                            }
//                            .buttonStyle(.borderedProminent)
//                            .cornerRadius(20)
//                        }
//                        .padding(20)
//                        .background(.thinMaterial)
//                        .cornerRadius(15)
//                        .padding(16)
//                    }
//                }
//            }
//            //            .padding()
//            .background(.ultraThinMaterial)
//            .cornerRadius(20)
//            //            .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 7)
//
//        }
//        .padding(.top, 10.0)
//        .padding(.bottom, 60.0)
//        .padding(.horizontal, 20.0)
//    }
//}
