//
//  Rosary.swift
//  Prayer Assistant
//
//  Created by Christopher Fernandes on 16/10/22.
//

import SwiftUI

struct Rosary: View {
    
    var mystery: [Mystery] = MysteryList.mysteries
    
    @State var selectedMysteryId: UUID?
    
    //    enum Flavor: String, CaseIterable, Identifiable {
    //        case joyful, luminous, sorrowful, glorious
    //        var id: Self { self }
    //    }
    
    //    @State private var selectedFlavor: Flavor = .joyful
    
    
    
    var body: some View {
        //        VStack {
        //            Picker("Flavor", selection: $selectedFlavor) {
        //                    ForEach(Flavor.allCases) { flavor in
        //                        Text(flavor.rawValue.capitalized)
        //                    }
        //
        //                }
        //            Spacer()
        //        }
        //        .pickerStyle(.segmented)
        //        .padding()
        
        GeometryReader { geometry in
            
            TabView{
                
                ForEach(mystery, id: \.id) { mystery in
                    NavigationLink(destination: RosaryDetail(mystery: mystery)
                        .navigationTitle(mystery.mysteryDesc+" Mysteries")
                        .navigationBarTitleDisplayMode(.inline), tag: mystery.id, selection: $selectedMysteryId, label: {
                            VStack {
                                VStack {
                                    ZStack {
                                        Image(mystery.mysteryPic)
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: geometry.size.width - 30)
                                        VStack {
                                            Spacer()
                                            HStack {
                                                VStack (spacing: 10){
                                                    
                                                    HStack {
                                                        Text(mystery.mysteryName)
                                                            .font(.footnote)
                                                            .opacity(0.5)
                                                            .fontWeight(.semibold)
                                                            .textCase(.uppercase)
                                                            .kerning(0.2)
                                                        Spacer()
                                                    }
                                                    
                                                    VStack {
                                                        HStack {
                                                            Text(mystery.mysteryDesc)
                                                                .font(.title)
                                                                .fontWeight(.bold)
                                                                .multilineTextAlignment(.leading)
                                                            Spacer()
                                                        }
                                                        HStack {
                                                            Text("Mysteries")
                                                                .font(.title)
                                                                .fontWeight(.bold)
                                                                .multilineTextAlignment(.leading)
                                                            Spacer()
                                                        }
                                                    }
                                                }
                                                Spacer()
                                                
                                                Button(action: {}, label: {
                                                    NavigationLink(destination: RosaryDetail(mystery: mystery)
                                                        .navigationTitle(mystery.mysteryDesc+" Mysteries")
                                                        .navigationBarTitleDisplayMode(.inline)
                                                    ) {
                                                        Label ("Start", systemImage: "hands.sparkles.fill")
                                                    }.fontWeight(.semibold)
                                                        .buttonStyle(.borderedProminent)
                                                        .cornerRadius(20)
                                                        .shadow(color: .accentColor.opacity(0.5), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, y: 7)
                                                }
                                                )
                                                
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
                            .shadow(color: Color(hue: 1.0, saturation: 0.0, brightness: 0.0, opacity: 0.1), radius: 10, x: 0, y: 10)
                        }
                    )
                    //                    .onAppear {
                    //                        if UIDevice.current.userInterfaceIdiom == .pad {
                    //                            DispatchQueue.main.async {
                    //                                selectedMysteryId = MysteryList.mysteries.first!.id
                    //                            }
                    //                        }
                    //                    }
                }
                .buttonStyle(PlainButtonStyle())
            }
            .padding(.bottom, 10)
            .tabViewStyle(.page(indexDisplayMode: .always))
            .indexViewStyle(.page(backgroundDisplayMode: .always))
        }
        
        
        
    }
}

struct Rosary_Previews: PreviewProvider {
    static var previews: some View {
        Rosary()
    }
}
