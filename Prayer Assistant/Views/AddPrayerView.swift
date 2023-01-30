//
//  AddPrayerView.swift
//  catholicism
//
//  Created by Christopher Fernandes on 30/01/23.
//

import SwiftUI

struct AddPrayerView: View {
    @Environment (\.managedObjectContext) var ManagedObjContext
    @Environment (\.dismiss) var dismiss
    
    @State private var name = ""
    @State private var prayercontent = ""
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                    .frame(height: 30.0)
                TextField("Your prayer title", text: $name).font(.largeTitle).fontWeight(.bold)
               
               VStack {
                   TextField("Your prayer content", text: $prayercontent).font(.title2).multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
               }
                Spacer()
            }
            .padding([.leading, .bottom, .trailing])
            VStack {
                Spacer()
                Button{
                    DataController().addPrayer(name: name, prayercontent: prayercontent, context: ManagedObjContext)
                    dismiss()
                } label: {
                    Label("Add prayer", systemImage: "plus.circle.fill")
                }.fontWeight(.semibold)
                    .buttonStyle(.borderedProminent).cornerRadius(20)
                    .shadow(color: .accentColor.opacity(0.5), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, y: 7)
                Spacer()
                    .frame(height: 30.0)
            }
        }
    }
}

struct AddPrayerView_Previews: PreviewProvider {
    static var previews: some View {
        AddPrayerView()
    }
}
