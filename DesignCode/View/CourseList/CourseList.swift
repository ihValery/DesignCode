//
//  CourseList.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 10.08.2021.
//

import SwiftUI

struct CourseList: View {
    var screen = ScreenBounds()
    
    var body: some View {
        VStack {
            CourseView()
        }
    }
}

struct CourseList_Previews: PreviewProvider {
    static var previews: some View {
        CourseList()
            .previewDevice("iPhone 12")
    }
}

struct CourseView: View {
    var screen = ScreenBounds()
    @State var animationCourse = false
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("SwiftUI Advanced")
                        .font(screen.height < 750 ? .title3 : .title)
                        .bold()
                        .foregroundColor(.white)
                    Text("20 Sections")
                        .foregroundColor(.white.opacity(0.7))
                }
                Spacer()
                Image("Logo1")
            }
            Spacer()
            Image("Card2")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .frame(height: (screen.widthSectionCard + 5) / 2, alignment: .top)
        }
        .padding(animationCourse ? 30 : 20)
        .padding(.top, animationCourse ? (UIApplication.shared.windows.first!.safeAreaInsets.top) : 0)
        .frame(maxWidth: animationCourse ? .infinity : screen.width - 60,
               maxHeight: animationCourse ? .infinity : screen.widthSectionCard + 5)
        .background(Color.card1)
        .clipShape(RoundedRectangle(cornerRadius: animationCourse ? 0 : 30, style: .continuous))
        .shadow(color: .card1.opacity(0.3), radius: 20, x: 0, y: 20)
        .animation(.spring(response: 0.5, dampingFraction: 0.6))
        
        .onTapGesture {
            animationCourse.toggle()
        }
        .ignoresSafeArea()
    }
}
