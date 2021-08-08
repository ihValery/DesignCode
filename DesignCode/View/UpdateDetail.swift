//
//  UpdateDetail.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 08.08.2021.
//

import SwiftUI

struct UpdateDetail: View {
    var element: Update
    
    var body: some View {
        List {
            VStack(spacing: 20) {
                Image(element.image)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                
                Text(element.text)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .navigationTitle(element.title)
        }
//        .listStyle(PlainListStyle())
    }
}

struct UpdateDetail_Previews: PreviewProvider {
    static var previews: some View {
        let element = updateData[1]
        UpdateDetail(element: element)
            .previewDevice("iPhone 12 Pro")
    }
}
