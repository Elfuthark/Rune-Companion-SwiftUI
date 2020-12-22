//
//  OneCastView.swift
//  Rune Companion
//
//  Created by Ryan Ball on 21/12/2020.
//

import SwiftUI

struct OneCastView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Image("Blank")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100, alignment: .center)
                .padding(8)
            
            ButtonView()
        } // :VSTACK
    }
}

// MARK:- PREVIEW

struct OneCastView_Previews: PreviewProvider {
    static var previews: some View {
        OneCastView()
    }
}
