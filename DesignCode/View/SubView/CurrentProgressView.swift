//
//  CurrentProgressView.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 09.08.2021.
//

import SwiftUI

struct CurrentProgressView: View {
    var title: String
    var subTitle: String
    
    init(_ title: String = "", _ subTitle: String = "") {
        self.title = title
        self.subTitle = subTitle
    }
    
    var body: some View {
        HStack {
            RingView(colorOne: Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)), colorTwo: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)), size: 44, percent: 78, ringAnimation: .constant(true))
                .padding(.trailing, 13)
            
            VStack(alignment: .leading, spacing: 6) {
                Text(title)
                    .font(.subheadline.bold())
                Text(subTitle)
                    .font(.caption)
            }
        }
        .padding()
        .shadowMofifier()
    }
}

struct CurrentProgressView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentProgressView()
            .previewDevice("iPhone 12")
    }
}
