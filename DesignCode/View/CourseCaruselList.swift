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
    @State var showFullScreenCard = false
    @State var activeIndex = -1
    
    var body: some View {
        ZStack {
            //StatusBar бекграун для него
            VStack {
                BlurView()
                    .opacity(showFullScreenCard ? 0 : 1)
                    .frame(height: screen.height < 750 ? 24 : 44)
                    .animation(.linear.speed(2))
                Spacer()
            }
            .zIndex(1)
            .ignoresSafeArea()
            
            Color.black.opacity(showFullScreenCard ? 0.5 : 0)
                .animation(.linear)
                .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: screen.height < 750 ? 50 : 40) {
                    Text("Courses")
                        .font(.title.bold())
                        .padding(.horizontal, 30)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .blur(radius: showFullScreenCard ? 20 : 0)
                    
                    ForEach(courses.indices, id:\.self) { index in
                        GeometryReader { gr in
                            CourseOneView(
                                course: courses[index],
                                animationCourse: $courses[index].isActive,
                                fullScreenCard: $showFullScreenCard,
                                index: index,
                                activIndex: $activeIndex
                            )
                            .offset(y: courses[index].isActive ? -gr.frame(in: .global).minY : 0)
                            .opacity(activeIndex != index && showFullScreenCard ? 0 : 1)
                            .scaleEffect(activeIndex != index && showFullScreenCard ? 0.5 : 1)
                        }
                        .frame(height: screen.widthSectionCard + 5)
                        .frame(maxWidth: courses[index].isActive ? .infinity : screen.width - 60)
                        .offset(y: -20)
                        .zIndex(courses[index].isActive ? 1 : 0)
                    }
                }
                .padding(.top, screen.height < 750 ? 10 : 0)
                .padding(.bottom, screen.height < 750 ? 50 : 0)
                .frame(width: screen.width)
                .animation(.spring(dampingFraction: 0.7))
            }
            .statusBar(hidden: showFullScreenCard)
            .animation(.linear)
        }
    }
}

struct CourseList_Previews: PreviewProvider {
    static var previews: some View {
        CourseCaruselList()
            .previewDevice("iPhone 12 Pro")
    }
}
