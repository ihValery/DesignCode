//
//  LogoTurnsDismiss.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 11.08.2021.
//

import SwiftUI

struct LogoTurnsDismiss: View {
    @Binding var animationCourse: Bool
    var action: () -> Void
    
    var body: some View {
        //Логотип превращаеться в dismiss
        ZStack {
            Button(action: {
                animationCourse = false
                action()
            }, label: {
                Image(systemName: "xmark.circle.fill")
                    .resizable()
                    .rotationEffect(.degrees(animationCourse ? 0 : -360))
                    .opacity(animationCourse ? 1 : 0)
                    .frame(width: 36, height: 36)
                    .foregroundColor(.primary)
            })
            
            Image("Logo1")
                .rotationEffect(.degrees(animationCourse ? 360 : 0))
                .opacity(animationCourse ? 0 : 1)
        }
    }
}

struct LogoTurnsDismiss_Previews: PreviewProvider {
    static var previews: some View {
        LogoTurnsDismiss(animationCourse: .constant(true), action: {})
            .previewDevice("iPhone 12 Pro")
    }
}
