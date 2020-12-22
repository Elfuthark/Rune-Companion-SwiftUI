//
//  ButtonView.swift
//  Rune Companion
//
//  Created by Ryan Ball on 21/12/2020.
//

import SwiftUI

struct ButtonView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        Button(action: {
            
        }) {
            Text("Cast Runes")
                .font(.title)
                .fontWeight(.heavy)
                .frame(width: 250, height: 50, alignment: .center)
                .background(Color.gray)
                .foregroundColor(.white)
                .cornerRadius(15)
                .padding(.top)
        }
    }
}

// MARK: - PREVIEW

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
