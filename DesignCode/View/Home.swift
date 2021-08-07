//
//  Home.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 07.08.2021.
//

import SwiftUI

struct Home: View {
    @State private var showProfile = false
    
    var body: some View {
        ZStack {
            ZStack {
                Color.background2
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    HStack {
                        Text("Watching")
                            .font(.system(size: 28, weight: .bold))
                        Spacer()
                        
                        Button(action: {
                            showProfile.toggle()
                        }, label: {
                            Image("Avatar")
                                .renderingMode(.original) //Уже не обязтелен!
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 36, height: 36)
                                .clipShape(Circle())
                        })
                    }
                    .padding(.horizontal)
                    .padding(.top, 30)
                    
                    Spacer()
                }
                .padding(.top, 44)
                .background(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: showProfile ? 30 : 0, style: .continuous))
                .shadow(color: .black.opacity(0.2), radius: 20, x: 0, y: 20)
                .rotation3DEffect(.degrees(showProfile ? -10 : 0), axis: (x: 10, y: 0, z: 0))
                .offset(y: showProfile ? -450 : 0)
                .scaleEffect(showProfile ? 0.9 : 1)
                .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
                .edgesIgnoringSafeArea(.all)
            }
            .onTapGesture {
                showProfile = false
            }
            
            MenuView()
                .offset(y: showProfile ? 0 : 600)
                .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
