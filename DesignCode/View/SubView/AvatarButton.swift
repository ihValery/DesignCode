//
//  AvatarButton.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 07.08.2021.
//

import SwiftUI

struct AvatarButton: View {
    @Binding var showProfile: Bool
    
    var body: some View {
        Button(action: {
            showProfile.toggle()
        }, label: {
            Image("Avatar")
                .renderingMode(.original) //Уже не обязтелен!
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 36, height: 36)
                .clipShape(Circle())
        })
    }
}

struct AvatarButton_Previews: PreviewProvider {
    static var previews: some View {
        AvatarButton(showProfile: .constant(false))
            .previewDevice("iPhone 12 Pro")
    }
}
