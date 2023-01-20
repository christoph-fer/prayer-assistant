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
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack {
                ZStack {
                    GeometryReader{reader in
                        ZStack {
                            Image(station.stationPic)
                            
                                .resizable()
                                .aspectRatio(contentMode: .fill)

                                .offset(y: -reader.frame(in: .global).minY)
                                .frame(width: UIScreen.main.bounds.width, height: reader.frame(in: .global).minY + 270)
                            Rectangle()
                                .foregroundColor(.clear)        // Making rectangle transparent
                                .background(LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .top, endPoint: .bottom))
                                       .frame(width: UIScreen.main.bounds.width, height: 270)
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
                .frame(height: 260)
            }
            VStack {
                HStack {
                    Text("**Leader:** We adore You, O Christ, and we praise You. \n\n**All:**  Because, by Your holy cross, You have redeemed the world. \n\n**Leader:** Consider how Jesus Christ, after being scourged and crowned with thorns, was unjustly condemned by Pilate to die on the cross. \n\n**All:** My adorable Jesus,it was not Pilate; no, it was my sins that condemned You to die. I beseech You, by the merits of this sorrowful journey, to assist my soul on its journey to eternity. I love You, beloved Jesus; I love You more than I love myself. With all my heart I repent of ever having offended You. Grant that I may love You always; and then do with me as You will.")
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
                    Text("Through her heart, His sorrow shared, \nAll His bitter anguish bearing \nNow at length the sword has passed!")
                        .font(.title2)
                        .opacity(0.6)
                    Spacer()
                }
                
                
            }
            .padding()
            .padding(.top, 10)
            
            .background(Color(UIColor.systemBackground))
        })
    }
}

struct StationDetail_Previews: PreviewProvider {
    static var previews: some View {
        StationDetail(station: StationsList.stations.first!)
    }
}
