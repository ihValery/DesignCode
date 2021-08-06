//
//  BackCardView.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 05.08.2021.
//

import SwiftUI

struct BackCardView: View {
    let color: Color
    var screen = ScreenBounds()
    
    var body: some View {
        color
            .cornerRadius(20)
            .shadow(radius: 20)
            .blendMode(.hardLight)
            .frame(width: screen.width, height: screen.height)
    }
}


struct BackCardView_Previews: PreviewProvider {
    static var previews: some View {
        BackCardView(color: .card4)
    }
}
