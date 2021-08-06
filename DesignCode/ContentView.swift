//
//  ContentView.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 05.08.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var show = false
    @State private var viewState = CGSize.zero
    
    var body: some View {
        ZStack {
            TitleView()
                .blur(radius: show ? 20 : 0)
                .animation(.default)
            
            BackCardView(color: .card4)
                .offset(x: viewState.width, y: viewState.height)
                .scaleEffect(0.8, anchor: .topTrailing)
                .rotationEffect(.degrees(show ? 60 : 10), anchor: .topTrailing)
                .animation(.spring(dampingFraction: 0.7))

            BackCardView(color: .card3)
                .offset(x: viewState.width, y: viewState.height)
                .scaleEffect(0.9, anchor: .topTrailing)
                .rotationEffect(.degrees(show ? 30 : 5), anchor: .topTrailing)
                .animation(.spring(dampingFraction: 0.6, blendDuration: 0.3))

            CardView()
                .offset(x: viewState.width, y: viewState.height)
                .animation(.spring(response: 0.3, dampingFraction: 0.6, blendDuration: 0))
                .onTapGesture {
                    show.toggle()
                }
                .gesture(DragGesture()
                            .onChanged { value in
                                viewState = value.translation
                                show = true
                            }
                            .onEnded { value in
                                viewState = .zero
                                show = false
                            }
                )
            
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
