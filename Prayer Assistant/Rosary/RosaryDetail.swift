//
//  RosaryDetail.swift
//  Prayer Assistant
//
//  Created by Christopher Fernandes on 16/10/22.
//

import SwiftUI

struct RosaryDetail: View {
    
    var mystery: Mystery
    
    @State private var showingSheet = false
    @State private var showingHailMary = false
    @State private var showingGloryBe = false
    
    @State private var decade = 1.0
    
    struct ToggleStates {
        var oneIsOn: Bool = false
        var twoIsOn: Bool = true
    }
    @State private var toggleStates = ToggleStates()
    @State private var topExpanded: Bool = true
    
    let gradient = Gradient(colors: [.black, .black, .black])
    
    @Environment (\.verticalSizeClass) var verticalSizeClass: UserInterfaceSizeClass?
    
    @Environment (\.horizontalSizeClass) var horizontalSizeClass: UserInterfaceSizeClass?
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack {
                if horizontalSizeClass == .compact {
                    ZStack {
                        GeometryReader{reader in
                            ZStack {
                                Image(mystery.mysteryPic)
                                
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                
                                    .offset(y: -reader.frame(in: .global).minY)
                                    .frame(width: UIScreen.main.bounds.width, height: reader.frame(in: .global).minY + 270)
                                Rectangle()
                                    .foregroundColor(.clear)        // Making rectangle transparent
                                    .background(LinearGradient(gradient: Gradient(colors: [.clear, .black.opacity(0.5)]), startPoint: .top, endPoint: .bottom))
                                    .frame(width: UIScreen.main.bounds.width, height: 270)
                            }
                            
                            
                            
                            
                            
                        }
                        VStack(spacing: 10) {
                            Spacer()
                            HStack {
                                Text(mystery.mysteryName)
                                    .font(.callout)
                                    .opacity(0.7)
                                    .fontWeight(.semibold)
                                    .textCase(.uppercase)
                                    .kerning(0.2)
                                    .foregroundColor(.white)
                                Spacer()
                            }
                            HStack {
                                Text(mystery.mysteryDesc)
                                    .font(.largeTitle)
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                Text("Mysteries")
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
                
            }
            VStack (spacing: 30) {
                HStack {
                    Text("**The Sign of the Cross:** In the name of the Father and of the Son and of the Holy Spirit, Amen.")
                        .font(.title2)
                    Spacer()
                }
                HStack {
                    Text("**The Apostle's Creed:** I believe in God, the Father Almighty, Creator of heaven and earth and in Jesus Christ, His only Son, our Lord; Who was conceived by the Holy Spirit, born of the Virgin Mary, suffered under Pontius Pilate, was crucified, died, and was buried, He descended into hell; the third day He arose again from the dead; He ascended into Heaven, sitteth at the right hand of God, the Father Almighty, from thence He shall come to judge the living and the dead. I believe in the Holy Spirit, the Holy Catholic Church, the communion of saints, the forgiveness of sins, the resurrection of the body, and life everlasting. Amen.")
                        .font(.title2)
                    Spacer()
                }
                HStack {
                    Text("**Our Father:** Our Father, Who art in Heaven, hallowed be Thy name; Thy Kingdom come, Thy will be done on earth as it is in Heaven. Give us this day our daily bread; and forgive us our trespasses as we forgive those who trespass against us; and lead us not into temptation, but deliver us from evil. Amen.")
                        .font(.title2)
                    Spacer()
                }
                HStack {
                    Text("**Hail Mary:** Hail Mary, full of grace, the Lord is with thee, blessed art thou amongst women and blessed is the fruit of thy womb, Jesus. Holy Mary Mother of God, pray for us sinners now and at the hour of our death. Amen. _(Recite 3x)_")
                        .font(.title2)
                    Spacer()
                }
                HStack {
                    Text("**Glory Be:** Glory be to the Father, the Son, and the Holy Spirit. As it was in the beginning is now and ever shall be, world without end. Amen.")
                        .font(.title2)
                    Spacer()
                }
                //                HStack {
                //                    Text("**The Joyful Mysteries:**")
                //                        .font(.title2)
                //                    Spacer()
                //                }
                TabView {
                    VStack (spacing: 20) {
                        ZStack {
                            Image(mystery.mystery1Pic)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 200, height: 300)
                                .cornerRadius(10)
                                .blur(radius: 30)
                                .padding(.top, 30)
                                .opacity(0.5)
                            Image(mystery.mystery1Pic)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 200, height: 300)
                                .cornerRadius(10)
                        }
                        
                        VStack (spacing: 3){
                            HStack (spacing: 5) {
                                Text("1st")
                                    .font(.title3)
                                    .fontWeight(.medium)
                                    .opacity(0.5)
                                Text(mystery.mysteryDesc)
                                    .font(.title3)
                                    .fontWeight(.medium)
                                    .opacity(0.5)
                                Text("Mystery")
                                    .font(.title3)
                                    .fontWeight(.medium)
                                    .opacity(0.5)
                            }
                            HStack {
                                Text(mystery.mystery1)
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .padding(.bottom, 20)
                            }
                        }
                        
                    }
                    VStack (spacing: 20) {
                        ZStack {
                            Image(mystery.mystery2Pic)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 200, height: 300)
                                .cornerRadius(10)
                                .blur(radius: 30)
                                .padding(.top, 30)
                                .opacity(0.5)
                            Image(mystery.mystery2Pic)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 200, height: 300)
                                .cornerRadius(10)
                        }
                        VStack (spacing: 3){
                            HStack (spacing: 5) {
                                Text("2nd")
                                    .font(.title3)
                                    .fontWeight(.medium)
                                    .opacity(0.5)
                                Text(mystery.mysteryDesc)
                                    .font(.title3)
                                    .fontWeight(.medium)
                                    .opacity(0.5)
                                Text("Mystery")
                                    .font(.title3)
                                    .fontWeight(.medium)
                                    .opacity(0.5)
                            }
                            HStack {
                                Text(mystery.mystery2)
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .padding(.bottom, 20)
                            }
                        }
                        
                    }
                    VStack (spacing: 20) {
                        ZStack {
                            Image(mystery.mystery3Pic)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 200, height: 300)
                                .cornerRadius(10)
                                .blur(radius: 30)
                                .padding(.top, 30)
                                .opacity(0.5)
                            Image(mystery.mystery3Pic)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 200, height: 300)
                                .cornerRadius(10)
                        }
                        VStack (spacing: 3){
                            HStack (spacing: 5) {
                                Text("3rd")
                                    .font(.title3)
                                    .fontWeight(.medium)
                                    .opacity(0.5)
                                Text(mystery.mysteryDesc)
                                    .font(.title3)
                                    .fontWeight(.medium)
                                    .opacity(0.5)
                                Text("Mystery")
                                    .font(.title3)
                                    .fontWeight(.medium)
                                    .opacity(0.5)
                            }
                            HStack {
                                Text(mystery.mystery3)
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .padding(.bottom, 20)
                            }
                        }
                        
                    }
                    VStack (spacing: 20) {
                        ZStack {
                            Image(mystery.mystery4Pic)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 200, height: 300)
                                .cornerRadius(10)
                                .blur(radius: 30)
                                .padding(.top, 30)
                                .opacity(0.5)
                            Image(mystery.mystery4Pic)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 200, height: 300)
                                .cornerRadius(10)
                        }
                        VStack (spacing: 3){
                            HStack (spacing: 5) {
                                Text("4th")
                                    .font(.title3)
                                    .fontWeight(.medium)
                                    .opacity(0.5)
                                Text(mystery.mysteryDesc)
                                    .font(.title3)
                                    .fontWeight(.medium)
                                    .opacity(0.5)
                                Text("Mystery")
                                    .font(.title3)
                                    .fontWeight(.medium)
                                    .opacity(0.5)
                            }
                            HStack {
                                Text(mystery.mystery4)
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .padding(.bottom, 20)
                            }
                        }
                        
                    }
                    VStack (spacing: 20) {
                        ZStack {
                            Image(mystery.mystery5Pic)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 200, height: 300)
                                .cornerRadius(10)
                                .blur(radius: 30)
                                .padding(.top, 30)
                                .opacity(0.5)
                            Image(mystery.mystery5Pic)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 200, height: 300)
                                .cornerRadius(10)
                        }
                        VStack (spacing: 3){
                            HStack (spacing: 5) {
                                Text("5th")
                                    .font(.title3)
                                    .fontWeight(.medium)
                                    .opacity(0.5)
                                Text(mystery.mysteryDesc)
                                    .font(.title3)
                                    .fontWeight(.medium)
                                    .opacity(0.5)
                                Text("Mystery")
                                    .font(.title3)
                                    .fontWeight(.medium)
                                    .opacity(0.5)
                            }
                            HStack {
                                Text(mystery.mystery5)
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .padding(.bottom, 20)
                            }
                        }
                        
                    }
                }
                .frame(height: 500)
                .tabViewStyle(.page(indexDisplayMode: .always))
                .indexViewStyle(.page(backgroundDisplayMode: .always))
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
                                Text("_Recite 10x_")
                                
                                Slider(value: $decade, in: 0...10, step: 1, minimumValueLabel: Text("0"), maximumValueLabel: Text("10"), label: {
                                    Text("Recite 3x")
                                }
                                )
                                
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
                    
                    //                    Spacer()
                }
                .padding(.vertical)
                HStack {
                    Text("Oh My Jesus, forgive us our sins, save us from the fires of hell, lead all souls to Heaven, especially those in the most need of Thy mercy. Amen.")
                        .font(.title2)
                        .opacity(0.6)
                        .multilineTextAlignment(.center)
                }
                Spacer()
                VStack (spacing: 30) {
                    HStack {
                        Text("**Hail Holy Queen:** Hail, holy Queen, Mother of mercy; hail, our life, our sweetness, and our hope. To thee do we cry, poor banished children of Eve. To thee do we send up our sighs mourning and weeping in this valley of tears. Turn then, most gracious advocate, thine eyes of mercy toward us, and after this our exile show us the blessed fruit of thy womb, Jesus. O clement, O loving, O sweet Virgin Mary.")
                            .font(.title2)
                        Spacer()
                    }
                    VStack (alignment: .leading, spacing: 15) {
                        HStack {
                            Text("**V:**")
                                .font(.title2)
                            Text("Pray for us, O Holy Mother of God")
                                .font(.title2)
                            Spacer()
                        }
                        HStack (alignment: .top) {
                            Text("**R:**")
                                .font(.title2)
                            Text("That we may be made worthy of the promises of Christ")
                                .font(.title2)
                            Spacer()
                        }
                    }
                    
                    HStack {
                        Text("**Let Us Pray:** O God, whose only begotten Son, by His life, death and resurrection, has purchased for us the rewards of eternal salvation, grant, we beseech thee, that while meditating on these mysteries of the most holy rosary of the Blessed Virgin Mary, that we may both imitate what they contain and obtain what they promise through Christ our Lord, Amen. ")
                            .font(.title2)
                        Spacer()
                    }
                    
                    HStack {
                        Text("**Litany of Our Lady**\nLord, have mercy on us.\n_– Lord have mercy on us._\nChrist, have mercy on us.\n_– Lord, have mercy on us._\nChrist, hear us.\n_– Christ, graciously hear us._\nGod the Father of Heaven,\n– _Have mercy on us._\nGod the Son, Redeemer of the world,\n– _Have mercy on us._\nGod the Holy Ghost,\n_– Have mercy on us._\nHoly Trinity, one God,\n_– Have mercy on us._\nHoly Mary, \n_– pray for us (Repeat)_\nHoly Mother of God,\nHoly Virgin of virgins,\nMother of Christ,\nMother of divine grace,\nMother most pure,\nMother most chaste,\nMother inviolate,\nMother undefiled,\nMother most amiable,\nMother most admirable,\nMother of good counsel,\nMother of our Creator,\nMother of our Savior,\nVirgin most prudent,\nVirgin most venerable,\nVirgin most renowned,\nVirgin most powerful,\nVirgin most merciful,\nVirgin most faithful,\nMirror of justice,\nSeat of wisdom,\nCause of our joy,\nSpiritual vessel,\nVessel of honor,\nSingular vessel of devotion,\nMystical rose,\nTower of David,\nTower of ivory,\nHouse of gold,\nArk of the Covenant,\nGate of Heaven,\nMorning star,\nHealth of the sick,\nRefuge of sinners,\nComforter of the afflicted,\nHelp of Christians,\nQueen of angels,\nQueen of patriarchs,\nQueen of prophets,\nQueen of apostles,\nQueen of martyrs,\nQueen of confessors,\nQueen of virgins,\nQueen of all saints,\nQueen conceived without Original Sin,\nQueen assumed into Heaven,\nQueen of the most holy Rosary,\nQueen of peace,\n\nLamb of God, who takes away the sins of the world. \n_– Spare us, O Lord._\n\nLamb of God, who takes away the sins of the world. \n– _Graciously hear us, O Lord._\n\nLamb of God, who takes away the sins of the world.\n_– Have mercy on us._")
                            .font(.title2)
                        Spacer()
                    }
                    
                    HStack {
                        Text("**Most Ancient Prayer to Our Lady:** We fly to thy patronage, O Holy Mother of God; despise not our petitions in our necessities, but deliver us always from all dangers, O glorious and blessed Virgin. Amen. ")
                            .font(.title2)
                        Spacer()
                    }
                    
                    VStack (alignment: .leading, spacing: 15) {
                        HStack {
                            Text("**V:**")
                                .font(.title2)
                            Text("Pray for us, O Holy Mother of God")
                                .font(.title2)
                            Spacer()
                        }
                        HStack (alignment: .top) {
                            Text("**R:**")
                                .font(.title2)
                            Text("That we may be made worthy of the promises of Christ")
                                .font(.title2)
                            Spacer()
                        }
                    }
                    
                    HStack {
                        Text("**Let Us Pray:** Defend, we beseech You, O Lord by the intercession of the Blessed Mary, ever Virgin, this your family from all adversity: and being prostrate before You with our hearts, mercifully protect us from the snares of the enemy. Through Christ our Lord. Amen. ")
                            .font(.title2)
                        Spacer()
                    }
                    //                    DisclosureGroup("The Litany of Our Lady", isExpanded: $topExpanded) {
                    //                        HStack {
                    //                            Text("**Let Us Pray:** O God, whose only begotten Son, by His life, death and resurrection, has purchased for us the rewards of eternal salvation, grant, we beseech thee, that while meditating on these mysteries of the most holy rosary of the Blessed Virgin Mary, that we may both imitate what they contain and obtain what they promise through Christ our Lord, Amen. ")
                    //                                .font(.title2)
                    //                            Spacer()
                    //                        }
                    //                    }
                }
            }
            .padding()
            .padding(.top, 10)
            
            .background(Color(UIColor.systemBackground))
        })
    }
}

struct RosaryDetail_Previews: PreviewProvider {
    static var previews: some View {
        RosaryDetail(mystery: MysteryList.mysteries.first!)
    }
}
