//
//  ProfileMenuView.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 06.08.2021.
//

import SwiftUI

struct ProfileMenuView: View {
    private var screen = ScreenBounds()
    
    @Binding var showProfile: Bool
    @Binding var profileState: CGSize
    
    init(profile: Binding<Bool>, state: Binding<CGSize>) {
        _showProfile = profile
        _profileState = state
    }
    
    var body: some View {
        VStack {
            Spacer()
    
            VStack(spacing: 0) {
                Text("ihValery")
                    .font(.title2)
                Text("28% complete")
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                
                //Статический слайдер реализованный без родительских стеков
                Color.white
                    .frame(width: 38, height: 6)
                    .cornerRadius(3)
                    .frame(width: 130, height: 6, alignment: .leading)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(3)
                    .frame(width: 150, height: 24)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(12)
                    .padding()
                
                VStack(spacing: 16) {
                    MenuRow(title: "Account", icon: "gear")
                    MenuRow(title: "Billing", icon: "creditcard")
                    MenuRow(title: "Sign out", icon: "person.crop.circle")
                }
            }
            .frame(maxWidth: .infinity)
            .frame(height: 300)
            .background(
                LinearGradient(gradient: Gradient(colors: [Color.white, .background4]),
                               startPoint: .top, endPoint: .bottom)
            )
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(color: .black.opacity(0.2), radius: 20, x: 0, y: 20)
            .padding(.horizontal, 30)
            .overlay(
                Image("Avatar")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                    .offset(y: -150)
            )
        }
        .padding(.bottom, 30)
        
        .offset(y: showProfile ? 0 : screen.height)
        .offset(x: profileState.width, y: profileState.height)
        .animation(.spring(response: 0.5, dampingFraction: 0.6))
        
        .gesture(
            DragGesture()
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

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileMenuView(profile: .constant(true), state: .constant(.zero))
            .previewDevice("iPhone 12 Pro")
    }
}
