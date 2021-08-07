//
//  SectionView.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 07.08.2021.
//

import SwiftUI

struct SectionView: View {
    var screen = ScreenBounds()
    var section: Section
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Text(section.title)
                    .font(screen.height < 750 ? .title3 : .title)
                    .bold()
                    .lineLimit(2)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.white)
                
                Spacer()
                Image(section.logo)
            }
            Text(section.subTitle.uppercased())
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.white.opacity(0.6))
            
            section.image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: screen.widthSectionCard - 110, alignment: .top)
        }
        .padding(.top)
        .padding(.horizontal)
        .background(section.color)
        .frame(width: screen.widthSectionCard, height: screen.widthSectionCard)
        .cornerRadius(30)
        .shadow(color: section.color.opacity(0.3), radius: 20, x: 0, y: 20)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        let section = sectionData[3]
        SectionView(section: section)
            .previewDevice("iPhone 12 Pro")
    }
}
