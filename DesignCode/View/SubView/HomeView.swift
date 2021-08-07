//
//  HomeView.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 07.08.2021.
//

import SwiftUI

struct HomeView: View {
    var screen = ScreenBounds()
    
    @Binding var showProfile: Bool
    @Binding var profileState: CGSize
    
    var body: some View {
        VStack {
            HStack {
                Text("Watching")
                    .font(.system(size: 28, weight: .bold))
                Spacer()
                
                AvatarButton(showProfile: $showProfile)
            }
            .padding(.horizontal)
            .padding(.leading, 16)
            .padding(.top, 30)
                
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30) {
                    ForEach(0 ..< 5) { item in
                        SectionView()
                    }
                }
                .padding(.horizontal, 30)
                .padding(.bottom, 60)
            }
            
            Spacer()
        }
        .padding(.top, screen.height < 750 ? 0 : 44)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: showProfile ? 30 : 0, style: .continuous))
        .shadow(color: .black.opacity(0.2), radius: 20, x: 0, y: 20)
        .rotation3DEffect(.degrees(showProfile ? Double(profileState.height / 10) - 10 : 0),
                          axis: (x: 10, y: 0, z: profileState.width / 10))
        .offset(y: showProfile ? profileState.height - 400 : 0)
        .scaleEffect(showProfile ? 0.9 : 1)
        .animation(.spring(response: 0.5, dampingFraction: 0.6))
        .edgesIgnoringSafeArea(.all)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(showProfile: .constant(false), profileState: .constant(.zero))
            .previewDevice("iPhone 12 Pro")
    }
}
