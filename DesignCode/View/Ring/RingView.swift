//
//  RingView.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 08.08.2021.
//

import SwiftUI

struct RingView: View {
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.black.opacity(0.1), lineWidth: 4)
                .frame(width: 44, height: 44)
            
            Circle()
                .trim(from: 0.2, to: 1)
                .stroke(LinearGradient(gradient: Gradient(colors: [Color.pink, Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))]), startPoint: .topTrailing, endPoint: .bottomLeading),
                        style: StrokeStyle(lineWidth: 5, lineCap: .round, lineJoin: .round, miterLimit: .infinity, dash: [0], dashPhase: 0))
                .rotationEffect(.degrees(90))
                .scaleEffect(y: -1)
                .frame(width: 44, height: 44)
                .shadow(color: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)), radius: 3, x: 0, y: 3)
            
            Text("82%")
                .font(.subheadline)
                .bold()
        }
    }
}

struct RingView_Previews: PreviewProvider {
    static var previews: some View {
        RingView()
            .previewDevice("iPhone 12 Pro")
    }
}
