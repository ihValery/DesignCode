//
//  Home.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 07.08.2021.
//

import SwiftUI

struct Home: View {
    private var screen = ScreenBounds()
    
    @State private var showProfile = false
    @State private var profileState = CGSize.zero
    
    var body: some View {
        ZStack {
            ZStack {
                Color.background2
                    .edgesIgnoringSafeArea(.all)
                
                HomeView(showProfile: $showProfile, profileState: $profileState)
            }
            .onTapGesture {
                showProfile = false
            }
            
            ProfileMenuView()
                .offset(y: showProfile ? 0 : screen.height)
                .offset(x: profileState.width, y: profileState.height)
                .animation(.spring(response: 0.5, dampingFraction: 0.6))
                .gesture(DragGesture()
                            .onChanged { value in
                                if profileState.height > 70 {
                                    showProfile = false
                                }
                                profileState = value.translation
                            }
                            .onEnded { value in
                                profileState = .zero
                            }
                )
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
            .previewDevice("iPhone 12 Pro")
    }
}
