//
//  SectionView.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 07.08.2021.
//

import SwiftUI

struct SectionView: View {
    var screen = ScreenBounds()
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Text("Prototype design in SwiftUI")
                    .font(screen.height < 750 ? .title3 : .title)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.white)
                
                Spacer()
                Image("Logo1")
            }
            Text("18 Sections".uppercased())
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Image("Card1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: screen.widthSectionCard - 65)
        }
        .padding(.top)
        .padding(.horizontal)
        .background(Color.card1)
        .frame(width: screen.widthSectionCard, height: screen.widthSectionCard)
        .cornerRadius(30)
        .shadow(color: Color.card1.opacity(0.3), radius: 20, x: 0, y: 20)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView()
            .previewDevice("iPhone 12 Pro")
    }
}
