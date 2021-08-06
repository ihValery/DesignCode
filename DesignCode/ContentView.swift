//
//  ContentView.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 05.08.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var show = false
    
    var body: some View {
        ZStack {
            TitleView()
                .blur(radius: show ? 20 : 0)
                .animation(.default)
            
            BackCardView(color: .card4)
                .scaleEffect(0.8, anchor: .topTrailing)
                .rotationEffect(.degrees(show ? 60 : 10), anchor: .topTrailing)
                .animation(.spring(dampingFraction: 0.7))

            BackCardView(color: .card3)
                .scaleEffect(0.9, anchor: .topTrailing)
                .rotationEffect(.degrees(show ? 30 : 5), anchor: .topTrailing)
                .animation(.spring(dampingFraction: 0.6, blendDuration: 0.3))

            CardView()
                .onTapGesture {
                    show.toggle()
                }
            
            BottomCardView()
                .blur(radius: show ? 20 : 0)
                .animation(.default)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .preferredColorScheme(.dark)
    }
}
