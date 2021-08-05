//
//  BackCardView.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 05.08.2021.
//

import SwiftUI

struct BackCardView: View {
    let color: String
    
    var body: some View {
        VStack {
            Spacer()
        }
        .frame(width: 340, height: 220)
        .background(Color(color))
        .cornerRadius(20)
        .shadow(radius: 20)
    }
}


struct BackCardView_Previews: PreviewProvider {
    static var previews: some View {
        BackCardView(color: "card3")
    }
}
