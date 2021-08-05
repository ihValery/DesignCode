//
//  TitleView.swift
//  DesignCode
//
//  Created by Валерий Игнатьев on 05.08.2021.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Certificate")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
            }
            .padding()
            
            Image("Background1")
            Spacer()
        }
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
    }
}
