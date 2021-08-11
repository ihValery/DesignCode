//
//  CourseCaruselList.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 10.08.2021.
//

import SwiftUI

struct CourseCaruselList: View {
    var screen = ScreenBounds()
    
    var body: some View {
        VStack {
            Text("What?")
//            CourseOneView()
        }
    }
}

struct CourseList_Previews: PreviewProvider {
    static var previews: some View {
        CourseCaruselList()
            .previewDevice("iPhone 12")
    }
}
