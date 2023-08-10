//
//  Donate.swift
//  catholically
//
//  Created by Christopher Fernandes on 22/01/23.
//

import SwiftUI

private let adaptiveColumns = [
    GridItem(.adaptive(minimum: 120),  spacing: 15)
]

private let adaptiveRows = [
    GridItem(.adaptive(minimum: 200),  spacing: 15)
]

struct Donate : View {
    
    @StateObject var viewModel = ViewModel()
    @StateObject var storekit = StoreKitManager()
    
    
    var body: some View {
        ZStack {
            
            NavigationStack{
                
                ZStack {
                    GeometryReader{reader in
                        ZStack {
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
                                        .font(.system(.body, design: .rounded))
                                        .frame(maxWidth: 420)
                                    Spacer()
                                }
                                HStack{
                                    Text("Developer, Prayer Assistant")
                                        .font(.footnote)
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
    }
}

struct Donate_Previews: PreviewProvider {
    static var previews: some View {
        Donate()
    }
}
