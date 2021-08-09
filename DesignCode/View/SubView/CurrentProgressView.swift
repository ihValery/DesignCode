//
//  CurrentProgressView.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 09.08.2021.
//

import SwiftUI

struct CurrentProgressView: View {
    var body: some View {
        HStack(spacing: 13) {
            RingView(colorOne: Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)), colorTwo: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)), size: 44, percent: 78, ringAnimation: .constant(true))
            
            VStack(alignment: .leading, spacing: 6) {
                Text("6 minut left")
                    .font(.subheadline.bold())
                Text("Watched 10 minut tuday")
                    .font(.caption)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        .shadow(color: .black.opacity(0.2), radius: 20, x: 0, y: 20)
        .shadow(color: .black.opacity(0.1), radius: 1, x: 0, y: 1)
    }
}

struct CurrentProgressView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentProgressView()
            .previewDevice("iPhone 12")
    }
}
