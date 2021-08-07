//
//  ViewModel.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 06.08.2021.
//

import SwiftUI

class ScreenBounds {
    private var screen = UIScreen.main.bounds

    var height = UIScreen.main.bounds.height
    var width = UIScreen.main.bounds.width
    
    var widthCard: CGFloat {
        screen.height < 750 ? 290 : 340
    }
    
    var heightCard: CGFloat {
        screen.height < 750 ? 181.25 : 212.5
    }
    
    var widthImageInCard: CGFloat {
        screen.height < 750 ? 250 : 300
    }
    
    var heightImageInCard: CGFloat {
        screen.height < 750 ? 78.125 : 93.75
    }
    
//    var offset: CGFloat {
//        screen.height < 750 ? screen.height / 2 : 360
//    }
    
    var bottomFullOffset: CGFloat {
        screen.height < 750 ? -screen.height / 2 + 20 : -screen.height / 2 + 64
    }
}
