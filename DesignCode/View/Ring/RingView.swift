//
//  RingView.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 08.08.2021.
//

import SwiftUI

struct RingView: View {
    var colorOne = Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
    var colorTwo = Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))
    var size: CGFloat = 300
    var percent: CGFloat = 80
    @Binding var ringAnimation: Bool
    
    var body: some View {
        let multiplier = size / 44
        let progress = percent / 100
        
        return ZStack {
            Circle()
                .stroke(Color.black.opacity(0.1), lineWidth: 5 * multiplier)
                .frame(width: size, height: size)

            Text("\(Int(percent))%")
                .font(.system(size: 14 * multiplier))
                .bold()

            Circle()
                .trim(from: 0, to: ringAnimation ? progress : 0)
                .stroke(LinearGradient(gradient: Gradient(colors: [colorOne, colorTwo]), startPoint: .topTrailing, endPoint: .bottomLeading),
                        style: StrokeStyle(lineWidth: 5 * multiplier, lineCap: .round, lineJoin: .round, miterLimit: .infinity, dash: [0], dashPhase: 0))
                .rotationEffect(.degrees(-90))
                .frame(width: size, height: size)
                .shadow(color: colorTwo.opacity(0.2), radius: 3 * multiplier, x: 0, y: 3 * multiplier)
        }
    }
}

struct RingView_Previews: PreviewProvider {
    static var previews: some View {
        RingView(ringAnimation: .constant(true))
            .previewDevice("iPhone 12 Pro")
    }
}
