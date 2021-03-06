//
//  ThreeCastView.swift
//  Rune Companion
//
//  Created by Ryan Ball on 21/12/2020.
//

import SwiftUI

struct ThreeCastView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        VStack {
            HStack {
                Image("Blank")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .padding(8)
                Image("Blank")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .padding(8)
                Image("Blank")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .padding(8)
            }
            
            ButtonView()
        } // :VSTACK
    }
}

struct ThreeCastView_Previews: PreviewProvider {
    static var previews: some View {
        ThreeCastView()
    }
}
