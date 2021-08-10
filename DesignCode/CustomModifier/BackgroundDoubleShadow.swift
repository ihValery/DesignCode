//
//  ShadowModifier.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 09.08.2021.
//

import SwiftUI

struct BackgroundDoubleShadow: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Color.white)
            .cornerRadius(20)
            .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 10)
            .shadow(color: .black.opacity(0.1), radius: 1, x: 0, y: 1)
    }
}

extension View {
    ///Белый фон с закругленными углами и двойная тень
    func backgroundDoubleShadow() -> some View {
        self.modifier(BackgroundDoubleShadow())
    }
}
