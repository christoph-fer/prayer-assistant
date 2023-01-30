//
//  PersonalPrayers.swift
//  catholicism
//
//  Created by Christopher Fernandes on 30/01/23.
//

import SwiftUI
import CoreData

struct PersonalPrayers: View {
    @Environment(\.managedObjectContext) var managedObjContext
    
    @Environment (\.managedObjectContext) var ManagedObjContext
    @Environment (\.dismiss) var dismiss
    
    @FetchRequest (sortDescriptors: [SortDescriptor(\.date, order: .reverse) ]) var myprayer:
    FetchedResults<MyPrayer>
    
    @State private var showingAddView = false
    
    @State private var name = ""
    @State private var prayercontent = ""
    
    var body: some View {
        //        NavigationView {
        //            VStack(alignment: .leading) {
        //                List {
        //                    ForEach(myprayer) { myprayer in
        //                        NavigationLink(destination: EditPrayerView(myprayer:myprayer).navigationBarTitleDisplayMode(.inline)) {
        //                            HStack {
        //                                VStack(alignment: .leading, spacing: 6) {
        //                                    Text(myprayer.name!)
        //                                        //.bold()
        //                                }
        //
        //                            }
        //                        }
        //                    }
        //                    .onDelete(perform: deletePrayer )
        //                }
        //                //.listStyle(.plain)
        //            }
        //            .navigationTitle("Personal Prayers")
        //            .toolbar {
        //                ToolbarItem(placement:  .bottomBar){
        //                    HStack {
        //                        Button {
        //                            showingAddView.toggle()
        //                        } label: {
        //                            Label ("Add Prayer", systemImage: "plus.circle.fill")
        //                        }
        //                        .buttonStyle(.borderless)
        //                        Text("Add prayer")
        //                            .fontWeight(.semibold)
        //                            .foregroundColor(Color("AccentColor"))
        //                    }
        //
        //                }
        //                ToolbarItem (placement: .bottomBar) {
        //                    EditButton()
        //                }
        //            }
        //            .sheet(isPresented:  $showingAddView) {
        //                AddPrayerView()
        //            }
        //        }
        ZStack{
            List {
                ForEach(myprayer) { myprayer in
                    NavigationLink(destination: EditPrayerView(myprayer:myprayer).navigationBarTitleDisplayMode(.inline)) {
                        HStack {
                            VStack(alignment: .leading, spacing: 6) {
                                Text(myprayer.name!)
                                //.bold()
                            }
                            
                        }
                    }
                }
                .onDelete(perform: deletePrayer )
                
//                Button {
//                    showingAddView.toggle()
//                } label: {
//                    Label ("Add Prayer", systemImage: "plus.circle.fill").fontWeight(.semibold)
//                }
//                .buttonStyle(.borderless)
//                .sheet(isPresented:  $showingAddView) {
//                    AddPrayerView()
//                }
                
            }
            .listStyle(.insetGrouped)
            
            VStack {
                Spacer()
                Button {
                    showingAddView.toggle()
                } label: {
                    Label ("Add Prayer", systemImage: "plus.circle.fill").fontWeight(.semibold)
                }
                .buttonStyle(.borderedProminent).cornerRadius(20)
                .sheet(isPresented:  $showingAddView) {
                    AddPrayerView()
                }
                .shadow(color: .accentColor.opacity(0.5), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, y: 7)
                Spacer()
                    .frame(height: 30.0)
            }
           
        }
    }
    private func deletePrayer(offsets: IndexSet) {
        withAnimation {
            offsets.map {  myprayer[$0] }.forEach(managedObjContext.delete)
            DataController().save(context: managedObjContext)
        }
    }
}

struct PersonalPrayers_Previews: PreviewProvider {
    static var previews: some View {
        PersonalPrayers()
    }
}
