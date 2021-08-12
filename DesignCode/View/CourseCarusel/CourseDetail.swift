//
//  CourseDetail.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 12.08.2021.
//

import SwiftUI

struct CourseDetail: View {
    var screen = ScreenBounds()
    
    var course: Course
    @Binding var animationCourse:Bool
    @Binding var fullScreenCard: Bool
    @Binding var activIndex: Int
    
    var body: some View {
        ScrollView {
            VStack {
                //Картинка карточки
                ParallaxHeader(course: course, animationCourse: $animationCourse, fullScreenCard: $fullScreenCard, activIndex: $activIndex)
                
                VStack(alignment: .leading, spacing: 30) {
                    Text("Take your SwiftUI app to the App Store with advanced techniques like API data, packages and CMS.")

                    Text("About this course")
                        .font(.title).bold()

                    Text("This course is unlike any other. We care about design and want to make sure that you get better at it in the process. It was written for designers and developers who are passionate about collaborating and building real apps for iOS and macOS. While it's not one codebase for all apps, you learn once and can apply the techniques and controls to all platforms with incredible quality, consistency and performance. It's beginner-friendly, but it's also packed with design tricks and efficient workflows for building great user interfaces and interactions. This course is unlike any other. We care about design and want to make sure that you get better at it in the process. It was written for designers and developers who are passionate about collaborating and building real apps for iOS and macOS. While it's not one codebase for all apps, you learn once and can apply the techniques and controls to all platforms with incredible quality, consistency and performance. It's beginner-friendly, but it's also packed with design tricks and efficient workflows for building great user interfaces and interactions.")

                    Text("Minimal coding experience required, such as in HTML and CSS. Please note that Xcode 11 and Catalina are essential. Once you get everything installed, it'll get a lot friendlier! I added a bunch of troubleshoots at the end of this page to help you navigate the issues you might encounter.")
                }
                .padding(30)
            }
        }
        .ignoresSafeArea()
    }
}

struct CourseDetail_Previews: PreviewProvider {
    static var previews: some View {
        let course = courseData[1]
        CourseDetail(course: course, animationCourse: .constant(false), fullScreenCard: .constant(true), activIndex: .constant(1))
            .previewDevice("iPhone 12 Pro")
    }
}
