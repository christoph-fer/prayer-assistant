//
//  StationsStart.swift
//  Prayer Assistant
//
//  Created by Christopher Fernandes on 06/10/22.
//

import SwiftUI

struct StationsStart: View {
    @Environment (\.horizontalSizeClass) var horizontalSizeClass: UserInterfaceSizeClass?
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack {
                if horizontalSizeClass == .compact {
                    ZStack {
                        
                        GeometryReader{reader in
                            ZStack {
                                Image("cross-pic-5")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .offset(y: -reader.frame(in: .global).minY)
                                    .frame(width: UIScreen.main.bounds.width, height: reader.frame(in: .global).minY + 470)
                                
                                Image("cross-pic-5")
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
                                Text("Preparatory Prayer")
                                    .font(.callout)
                                    .opacity(0.7)
                                    .fontWeight(.semibold)
                                    .textCase(.uppercase)
                                    .kerning(0.2)
                                    .foregroundColor(.white)
                                Spacer()
                            }
                            HStack {
                                Text("In honour of the Passion and Death of our Lord")
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
                HStack {
                    Text("**All:** My Lord, Jesus Christ, You have made this journey to die for me with unspeakable love; and I have so many times ungratefully abandoned You. | But now I love You with all my heart; and, because I love You, I am sincerely sorry for ever having offended You. Pardon me, my God, and permit me to accompany You on this journey. You go to die for love of me; I want, my beloved Redeemer, to die for love of You. My Jesus, I will live and die always united to You.")
                        .font(.title2)
                    Spacer()
                }
                HStack {
                    Text("At the cross her station keeping\nStood the mournful Mother weeping\nClose to Jesus to the last")
                        .font(.title3)
                        .opacity(0.6)
                    Spacer()
                }
                .padding(.vertical)
            }
            .padding()
            .background(Color(UIColor.systemBackground))
           
        })
    }
}

struct StationsStart_Previews: PreviewProvider {
    static var previews: some View {
        StationsStart()
    }
}
