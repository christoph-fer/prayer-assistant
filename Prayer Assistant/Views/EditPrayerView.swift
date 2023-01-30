//
//  EditPrayerView.swift
//  catholicism
//
//  Created by Christopher Fernandes on 30/01/23.
//

import SwiftUI

struct EditPrayerView: View {
    @Environment (\.managedObjectContext) var ManagedObjContext
    @Environment (\.dismiss) var dismiss
    
    var myprayer: FetchedResults<MyPrayer>.Element
    
    @State private var name = ""
    @State private var prayercontent = ""
    
    var body: some View {
        ZStack {
            VStack {
                TextField("\(myprayer.name!)", text: $name).font(.largeTitle).fontWeight(.bold)
                    .onAppear{
                        name = myprayer.name!
                        prayercontent = myprayer.prayercontent!
                    }
                VStack {
                    TextField("Prayer content", text: $prayercontent,  axis: .vertical).font(.title2).multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                }
                Spacer()
                
                // Spacer()
            }
            .padding([.leading, .bottom, .trailing])
        }
        
        HStack {
            Spacer()
            VStack {
                Button {
                    DataController().editPrayer(myprayer: myprayer, name: name, prayercontent: prayercontent, context: ManagedObjContext)
                    dismiss()
                } label: {
                    Label ("Update prayer", systemImage: "checkmark.circle.fill")
                    
                }.fontWeight(.semibold)
                .buttonStyle(.borderedProminent).cornerRadius(20)
                .shadow(color: .accentColor.opacity(0.5), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, y: 7)
                Spacer()
                    .frame(height: 30.0)
            }
            
            Spacer()
        }
       
    }
}

//struct EditPrayerView_Previews: PreviewProvider {
//    static var previews: some View {
//        EditPrayerView()
//    }
//}
