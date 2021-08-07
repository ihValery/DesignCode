//
//  ButtonBell.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 07.08.2021.
//

import SwiftUI

struct ButtonBell: View {
    @Binding var showUpdate: Bool
    
    var body: some View {
        Button(action: {
            showUpdate.toggle()
        }, label: {
            Image(systemName: "bell")
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.black)
                .frame(width: 36, height: 36)
                .background(Color.white)
                .clipShape(Circle())
                .shadow(color: .black.opacity(0.1), radius: 1, x: 0, y: 1)
                .shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: 5)
        })
    }
}

struct ButtonBell_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBell(showUpdate: .constant(false))
    }
}
