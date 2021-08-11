//
//  CourseOneView.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 10.08.2021.
//

import SwiftUI

struct CourseOneView: View {
    var screen = ScreenBounds()
    var course: Course
    @Binding var animationCourse: Bool
    
    var body: some View {
        ZStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 30) {
                Text("Take your SwiftUI app to the App Store with advanced techniques like API data, packages and CMS.")

                Text("About this course")
                    .font(.title).bold()

                Text("This course is unlike any other. We care about design and want to make sure that you get better at it in the process. It was written for designers and developers who are passionate about collaborating and building real apps for iOS and macOS. While it's not one codebase for all apps, you learn once and can apply the techniques and controls to all platforms with incredible quality, consistency and performance. It's beginner-friendly, but it's also packed with design tricks and efficient workflows for building great user interfaces and interactions.")

                Text("Minimal coding experience required, such as in HTML and CSS. Please note that Xcode 11 and Catalina are essential. Once you get everything installed, it'll get a lot friendlier! I added a bunch of troubleshoots at the end of this page to help you navigate the issues you might encounter.")
            }
            .padding(30)
            .frame(maxWidth: animationCourse ? .infinity : screen.width - 60,
                   maxHeight: animationCourse ? .infinity : screen.widthSectionCard + 25, alignment: .top)
            .offset(y: animationCourse ? screen.height * 1.61 / 3 : 0)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: animationCourse ? 0 : 30, style: .continuous))
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 20)
            
            //Картинка карточки
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
                    LogoTurnsDismiss(animationCourse: $animationCourse)

                }
                Spacer()
                course.image
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .frame(height: (screen.widthSectionCard + 5) / 2, alignment: .top)
            }
            .padding(.bottom, animationCourse ? 30 : 20)
            .padding(.horizontal, animationCourse ? 30 : 20)
            .padding(.top, animationCourse ? (UIApplication.shared.windows.first!.safeAreaInsets.top + 10) : 20)
            .frame(maxWidth: animationCourse ? .infinity : screen.width - 60,
                   maxHeight: animationCourse ? screen.height * 1.61 / 3 : screen.widthSectionCard + 25)
            .background(course.color)
            .clipShape(CustomCorners(corner: animationCourse ? [.bottomLeft, .bottomRight] : .allCorners,
                                     radius: 30))
            //Что бы анимировать два верхних угла
            .clipShape(RoundedRectangle(cornerRadius: animationCourse ? 0 : 30, style: .continuous))
            .shadow(color: course.color.opacity(0.3), radius: 20, x: 0, y: 20)
            
            .onTapGesture {
                animationCourse = true
            }
        }
        .frame(height: animationCourse ? screen.height : screen.widthSectionCard + 5)
        .animation(.spring(dampingFraction: 0.7).speed(0.1))
        .ignoresSafeArea()
    }
}

struct CourseOneView_Previews: PreviewProvider {
    static var previews: some View {
        let course = courseData[2]
        CourseOneView(course: course, animationCourse: .constant(false))
            .previewDevice("iPhone 12 Pro")
    }
}
