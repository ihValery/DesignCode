//
//  CardView.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 05.08.2021.
//

import SwiftUI

struct CardView: View {
    var screen = ScreenBounds()
    
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
                .frame(width: screen.width250, height: screen.height250, alignment: .top)
        }
        .background(Color.black)
        .cornerRadius(20)
        .shadow(radius: 20)
        .blendMode(.hardLight)
        .frame(width: screen.width, height: screen.height)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
