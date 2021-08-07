//
//  ProfileMenuView.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 06.08.2021.
//

import SwiftUI

struct ProfileMenuView: View {
    var body: some View {
        VStack {
            Spacer()
    
            VStack(spacing: 5) {
                Text("Meng - 28% complete")
                
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
            .background(LinearGradient(gradient: Gradient(colors: [Color.white, .background4]), startPoint: .top, endPoint: .bottom))
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
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileMenuView()
            .previewDevice("iPhone 12 Pro")
    }
}
