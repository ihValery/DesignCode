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
    @State private var showConWatching = false
    
    var body: some View {
        ZStack {
            ZStack {
                Color.background2
                    .edgesIgnoringSafeArea(.all)

                HomeView(showProfile: $showProfile, profileState: $profileState, showContent: $showConWatching)
            }
            .onTapGesture {
                showProfile = false
            }

            ProfileMenuView(profile: $showProfile, state: $profileState)

//Не красивая реализация .transition при использовании if
/*
            if showContent {
                ZStack {
                    Color.white
                        .ignoresSafeArea()

                    Certificate()
                    
                    HStack {
                        Spacer()
                        VStack {
                            Button(action: {
                                showContent = false
                            }, label: {
                                Image(systemName: "xmark")
                                    .frame(width: 36, height: 36)
                                    .foregroundColor(.white)
                                    .background(Color.black)
                                    .clipShape(Circle())
                            })
                            Spacer()
                        }
                    }
                    .padding()
                }
                .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .trailing)))
                .animation(.easeInOut)
            }
 */
        }
        .fullScreenCover(isPresented: $showConWatching) {
            Certificate()
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
            .previewDevice("iPhone 12 Pro")
    }
}
