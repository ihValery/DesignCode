//
//  CourseCaruselList.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 10.08.2021.
//

import SwiftUI

struct CourseCaruselList: View {
    var screen = ScreenBounds()
    @State var animationCourse = false
    @State var animationCourse2 = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                CourseOneView(animationCourse: $animationCourse)
                GeometryReader { gr in
                    CourseOneView(animationCourse: $animationCourse2)
                        .offset(y: animationCourse2 ? -gr.frame(in: .global).minY : 0)
                }
                .frame(height: animationCourse2 ? screen.height : 280)
                .frame(maxWidth: animationCourse2 ? .infinity : screen.width - 60)
            }
            .frame(width: screen.width)
        }
    }
}

struct CourseList_Previews: PreviewProvider {
    static var previews: some View {
        CourseCaruselList()
            .previewDevice("iPhone 12")
    }
}
