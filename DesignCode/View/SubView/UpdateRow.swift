//
//  UpdateRow.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 08.08.2021.
//

import SwiftUI

struct UpdateRow: View {
    var element: Update
    
    var body: some View {
        HStack {
            Image(element.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
                .background(Color.black)
                .cornerRadius(20)
                .padding(.trailing, 4)
            
            VStack(alignment: .leading, spacing: 8.0) {
                Text(element.title)
                    .font(.title2)
                    .bold()
                
                Text(element.text)
                    .lineLimit(2)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Text(element.date)
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
            }
        }
        .padding(.vertical, 8)
    }
}


struct UpdateRow_Previews: PreviewProvider {
    static var previews: some View {
        let element = updateData[2]
        UpdateRow(element: element)
            .previewDevice("iPhone 12 Pro")
    }
}
