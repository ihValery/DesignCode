//
//  MenuRow.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 06.08.2021.
//

import SwiftUI

struct MenuRow: View {
    var title: String
    var icon: String
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: icon)
                .font(.system(size: 20, weight: .light))
                .imageScale(.large)
                .frame(width: 32, height: 32)
            Text(title)
                .font(.system(size: 20, design: .default))
                .frame(width: 120, alignment: .leading)
        }
    }
}

struct MenuRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuRow(title: "Account", icon: "gear")
    }
}
