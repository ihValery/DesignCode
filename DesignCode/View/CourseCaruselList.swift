//
//  CourseCaruselList.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 10.08.2021.
//

import SwiftUI

struct CourseCaruselList: View {
    var screen = ScreenBounds()
    @State var courses = courseData
    
    var body: some View {
        ScrollView {
            VStack(spacing: screen.height < 750 ? 50 : 40) {
                Text("Courses")
                    .font(.title.bold())
                    .padding(.horizontal, 30)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(courses.indices, id:\.self) { index in
                    GeometryReader { gr in
                        CourseOneView(course: courses[index], animationCourse: $courses[index].isActive)
                            .offset(y: courses[index].isActive ? -gr.frame(in: .global).minY : 0)
                    }
//                    .frame(height: courses[index].isActive ? screen.height : screen.widthSectionCard + 5)
                    .frame(height: screen.widthSectionCard + 5)
                    .frame(maxWidth: courses[index].isActive ? .infinity : screen.width - 60)
                    .zIndex(courses[index].isActive ? 1 : 0)
                    .offset(y: -20)
                }
            }
            .padding(.top, screen.height < 750 ? 10 : 0)
            .padding(.bottom, screen.height < 750 ? 50 : 0)
            .frame(width: screen.width)
            .animation(.spring(dampingFraction: 0.7))
        }
    }
}

struct CourseList_Previews: PreviewProvider {
    static var previews: some View {
        CourseCaruselList()
            .previewDevice("iPhone 12")
    }
}
