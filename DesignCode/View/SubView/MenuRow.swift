//
//  MenuRow.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 06.08.2021.
//  Ok

import SwiftUI

struct MenuRow: View {
    var title: String
    var icon: String
    
    var body: some View {
        Button(action: {
            
        }, label: {
            HStack(spacing: 16) {
                Image(systemName: icon)
                    .font(.title2)
                    .imageScale(.large)
                    .frame(width: 32, height: 32)
                    .foregroundColor(.gray)
                Text(title)
                    .font(.title2)
                    .foregroundColor(.black)
                    .frame(width: 120, alignment: .leading)
            }
        })
    }
}

struct MenuRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuRow(title: "Account", icon: "gear")
            .previewDevice("iPhone 12 Pro")
    }
}
