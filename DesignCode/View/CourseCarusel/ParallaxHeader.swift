//
//  ParallaxHeader.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 12.08.2021.
//

import SwiftUI

struct ParallaxHeader: View {
    var screen = ScreenBounds()
    
    var course: Course
    @Binding var animationCourse: Bool
    @Binding var fullScreenCard: Bool
    @Binding var activIndex: Int
    
    var body: some View {
        GeometryReader { gr in
            let offset = gr.frame(in: .global).minY
            
            VStack {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 8) {
                        Text(course.title)
                            .font(screen.height < 750 ? .title3 : .title)
                            .bold()
                            .foregroundColor(.white)
                        Text(course.subtitle)
                            .foregroundColor(.white.opacity(0.7))
                    }
                    Spacer()
                    
                    
                    //Логотип превращаеться в dismiss
                    LogoTurnsDismiss(animationCourse: $animationCourse) {
                        fullScreenCard = false
                        activIndex = -1
                    }
                }
                //40 - Canvas
                .padding(.top, animationCourse ? (screen.height < 750 ? 20 : 40) : 0)
                .offset(y: offset > 0 ? offset / 5 : 0)
                
                Spacer()
                course.image
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .frame(height: (screen.widthSectionCard + 5) / 2, alignment: .top)
                    .scaleEffect(offset > 0 ? 1 + offset / 300 : 1)
            }
            .padding(.bottom, animationCourse ? 30 : 20)
            .padding(.horizontal, animationCourse ? 30 : 20)
            .padding(.top, animationCourse ? 0 : 20)
            .frame(maxWidth: animationCourse ? .infinity : screen.width - 60)
            .frame(height: animationCourse ?
                    screen.height * 1.6 / 3 + (offset > 0 ? offset : 0) :
                    screen.widthSectionCard + 25)
            .background(course.color)
            .clipShape(CustomCorners(corner: animationCourse ? [.bottomLeft, .bottomRight] : .allCorners,
                                     radius: 30))
            //Что бы анимировать два верхних угла
            .clipShape(RoundedRectangle(cornerRadius: animationCourse ? 0 : 30, style: .continuous))
            .shadow(color: course.color.opacity(0.3), radius: 20, x: 0, y: 20)
            .offset(y: offset > 0 ? -offset : 0)
        }
        .frame(height: screen.height * 1.6 / 3)
    }
}

//struct ParallaxHeader_Previews: PreviewProvider {
//    static var previews: some View {
//        ParallaxHeader(course: courseData[2], animationCourse: .constant(true))
//            .previewDevice("iPhone 12 Pro")
//    }
//}
