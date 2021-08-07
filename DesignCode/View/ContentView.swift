//
//  ContentView.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 05.08.2021.
//

import SwiftUI

struct ContentView: View {
    private var screen = ScreenBounds()
    
    @State private var show = false
    @State private var viewState = CGSize.zero
    @State private var showCard = false
    @State private var bottomState = CGSize.zero
    @State private var bottomStateFull = false
    
    var body: some View {
        ZStack {
            TitleView()
                .blur(radius: show ? 20 : 0)
                .opacity(showCard ? 0.4 : 1)
                .scaleEffect(showCard ? 1.5 : 1)
                .animation(.default
                            .delay(0.1)
                            .speed(2))
            
            BackCardView(color: .card4)
                .offset(x: viewState.width, y: viewState.height)
                .offset(y: showCard ? -210 : 0)
                .opacity(bottomState.height < -250 ? 0 : 1)
                .scaleEffect(0.8, anchor: showCard ? .top : .topTrailing)
                .rotationEffect(.degrees(show ? 60 : 10), anchor: .topTrailing)
                .rotationEffect(.degrees(showCard ? -10 : 0), anchor: .topTrailing)
                .animation(.spring(dampingFraction: 0.7))

            BackCardView(color: .card3)
                .offset(x: viewState.width, y: viewState.height)
                .offset(y: showCard ? -160 : 0)
                .scaleEffect(0.9, anchor: showCard ? .top : .topTrailing)
                .rotationEffect(.degrees(show ? 30 : 5), anchor: .topTrailing)
                .rotationEffect(.degrees(showCard ? -5 : 0), anchor: .topTrailing)
                .animation(.spring(dampingFraction: 0.6, blendDuration: 0.3))

            CardView(showCard: $showCard)
                .offset(x: viewState.width, y: viewState.height)
                .scaleEffect(showCard ? 1.1 : 1)
                .animation(.spring(response: 0.3, dampingFraction: 0.6, blendDuration: 0))
                .onTapGesture {
                    showCard.toggle()
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
                .offset(y: showCard ? getRect().height / 2 : 1000)
                .offset(y: bottomState.height)
                .blur(radius: show ? 20 : 0)
                .animation(.timingCurve(0.2, 0.8, 0.2, 1, duration: 0.8))
                .gesture(DragGesture()
                            .onChanged { value in
                                bottomState = value.translation
                                if bottomStateFull {
                                    bottomState.height += screen.bottomFullOffset
                                }
                                
                                if bottomState.height < screen.bottomFullOffset {
                                    bottomState.height = screen.bottomFullOffset
                                }
                            }
                            .onEnded { value in
                                if bottomState.height > 70 {
                                    showCard = false
                                }
                                
                                if (bottomState.height < -110 && !bottomStateFull) ||
                                    (bottomState.height < -200 && bottomStateFull) {
                                    bottomState.height = screen.bottomFullOffset
                                    bottomStateFull = true
                                } else {
                                    bottomState = .zero
                                    bottomStateFull = false
                                }
                            }
                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .preferredColorScheme(.dark)
    }
}
