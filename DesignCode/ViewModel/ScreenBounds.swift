//
//  ViewModel.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 06.08.2021.
//

import SwiftUI

class ScreenBounds: ObservableObject {
    private var screen = UIScreen.main.bounds.height
    
    var width: CGFloat {
        screen < 750 ? 290 : 340
    }
    
    var height: CGFloat {
        screen < 750 ? 181.25 : 212.5
    }
    
    var width250: CGFloat {
        screen < 750 ? 250 : 300
    }
    
    var height250: CGFloat {
        screen < 750 ? 78.125 : 93.75
    }
    
    var offset: CGFloat {
        screen < 750 ? screen * 2 / 3 : 500
    }
}
