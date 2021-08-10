//
//  WatchingRingView.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 09.08.2021.
//

import SwiftUI

struct WatchingRingView: View {
    var body: some View {
        HStack(spacing: 25) {
            CurrentProgressView("6 minut left", "Watched 10 minut tuday")
            
            RingView(colorOne: Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)), colorTwo: Color(#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)), size: 44, percent: 65, ringAnimation: .constant(true))
                .padding()
                .backgroundDoubleShadow()
            
            RingView(colorOne: Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)), colorTwo: Color(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)), size: 44, percent: 34, ringAnimation: .constant(true))
                .padding()
                .backgroundDoubleShadow()
                .padding(.trailing, 30)
        }
        .padding(.leading, 30)
        .padding(.bottom, 30)
    }
}

struct WatchingRingView_Previews: PreviewProvider {
    static var previews: some View {
        WatchingRingView()
            .previewDevice("iPhone 12")
    }
}
