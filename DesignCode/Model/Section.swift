//
//  Section.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 07.08.2021.
//

import SwiftUI

struct Section: Identifiable {
    var id = UUID()
    var title: String
    var subTitle: String
    var logo: String
    var image: Image
    var color: Color
}

let sectionData: [Section] = [
    Section(title: "Build an app with SwiftUI", subTitle: "18 Sections", logo: "Logo1", image: Image("Card1"), color: .card1),
    Section(title: "Combine and Data", subTitle: "18 Sections", logo: "Logo1", image: Image("Card4"), color: .card4),
    Section(title: "SwiftUI for iOS 14", subTitle: "20 Sections", logo: "Logo1", image: Image("Card2"), color: .card2),
    Section(title: "Advanced Development in SwiftUI", subTitle: "22 Sections", logo: "Logo1", image: Image("Card3"), color: .card3),
    Section(title: "SwiftUI Concurrency", subTitle: "20 Sections", logo: "Logo1", image: Image("Card5"), color: .card5)
]
