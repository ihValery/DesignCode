//
//  UpdateList.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 08.08.2021.
//

import SwiftUI

struct UpdateList: View {
//    @StateObject var store = UpdateStore()
    @ObservedObject var store = UpdateStore()
    
    func add() {
        store.updates.append(Update(image: "Card6", title: "New item", text: "This is a hardcoded item. For dynamism, it is tedious to create a separate view in which we will collect the data entered by the user.", date: "AUG 8"))
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(store.updates) { item in
                    NavigationLink(destination: UpdateDetail(element: item)) {
                        UpdateRow(element: item)
                    }
                }
                
                .onDelete { indexSet in
                    store.updates.remove(at: indexSet.first!)
                }
                
                .onMove { indices, newOffset in
                    store.updates.move(fromOffsets: indices, toOffset: newOffset)
                }
            }
            .navigationBarTitle(Text("Updates"))
            .navigationBarItems(leading:
                                    Button(action: add, label: {
                                        Image(systemName: "plus")
                                    }),
                                trailing: EditButton())
        }
    }
}

struct UpdateList_Previews: PreviewProvider {
    static var previews: some View {
        UpdateList()
            .previewDevice("iPhone 12 Pro")
    }
}
