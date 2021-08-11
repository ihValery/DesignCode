//
//  Course.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 11.08.2021.
//

import SwiftUI

struct Course: Identifiable {
    var id = UUID()
    var title: String
    var subtitle: String
    var image: Image
    var logo: Image
    var color: Color
    var isActive: Bool
}

var courseData: [Course] = [
    Course(title: "Build an app with SwiftUI", subtitle: "18 Sections", image: Image("Card1"), logo: Image("Logo1"), color: .card1, isActive: false),
    Course(title: "Advanced Development in SwiftUI", subtitle: "22 Sections", image: Image("Card3"), logo: Image("Logo1"), color: .card3, isActive: false),
    Course(title: "SwiftUI for iOS 14", subtitle: "20 Sections", image: Image("Card2"), logo: Image("Logo1"), color: .card2, isActive: false),
    Course(title: "SwiftUI Concurrency", subtitle: "20 Sections", image: Image("Card5"), logo: Image("Logo1"), color: .card5, isActive: false),
    Course(title: "Combine and Data", subtitle: "18 Sections", image: Image("Card4"), logo: Image("Logo1"), color: Color(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)), isActive: false)
]
