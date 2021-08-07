//
//  CardView.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 05.08.2021.
//

import SwiftUI

struct CardView: View {
    var screen = ScreenBounds()
    @Binding var showCard: Bool
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("UI Design")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    Text("Certificate")
                        .foregroundColor(.accent)
                }
                
                Spacer()
                Image("Logo1")
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)
            
            Spacer()
            Image("Card1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: screen.widthImageInCard, height: screen.heightImageInCard, alignment: .top)
        }
        .frame(width: screen.widthCard, height: screen.heightCard)
        .background(Color.black)
        .clipShape(RoundedRectangle(cornerRadius: showCard ? 30 : 20, style: .continuous))
        .offset(y: showCard ? -100 : 0)
        .shadow(radius: 20)
        .blendMode(.hardLight)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(showCard: .constant(true))
            .previewDevice("iPhone 12 Pro")
    }
}
