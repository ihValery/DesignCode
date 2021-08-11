//
//  BlurView.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 11.08.2021.
//

import SwiftUI

struct BlurView: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemUltraThinMaterialLight))
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {}
}
