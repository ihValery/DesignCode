//
//  UpdateList.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 08.08.2021.
//

import SwiftUI

struct UpdateList: View {
    var body: some View {
        NavigationView {
            List(updateData) { item in
                NavigationLink(destination: UpdateDetail(element: item)) {
                    UpdateRow(element: item)
                }
            }
            .navigationBarTitle(Text("Updates"))
        }
    }
}

struct UpdateList_Previews: PreviewProvider {
    static var previews: some View {
        UpdateList()
            .previewDevice("iPhone 12 Pro")
    }
}
