//
//  BottomCardView.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 05.08.2021.
//

import SwiftUI

struct BottomCardView: View {
    
    var body: some View {
        VStack(spacing: 20) {
            Rectangle()
                .frame(width: 40, height: 5)
                .cornerRadius(3)
                .opacity(0.1)
            
            Text("This course was written for designers and developers who are passionate about design and about building real apps for iOS, iPadOS, macOS, tvOS and watchOS.")
                .multilineTextAlignment(.center)
                .font(.subheadline)
                .lineSpacing(4)
            
            HStack {
                RingView(colorOne: Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)), colorTwo: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)), size: 88, percent: 78, ringAnimation: .constant(true))
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("SwiftUI")
                        .bold()
                    Text("9 of 12 sections completed\n10 fours spent so far")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .lineSpacing(4)
                }
                .padding(20)
                .background(Color.white)
                .cornerRadius(20)
                .shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: 0)
            }
            .padding()
            
            Spacer()
        }
        .padding(.top, 8)
        .padding(.horizontal, 20)
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(20)
        .shadow(radius: 20)
    }
}

struct BottomCardView_Previews: PreviewProvider {
    static var previews: some View {
        BottomCardView()
            .previewDevice("iPhone 12 Pro")
    }
}
