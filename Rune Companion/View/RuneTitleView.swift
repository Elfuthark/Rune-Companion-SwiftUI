//
//  RuneTitleView.swift
//  Rune Companion
//
//  Created by Ryan Ball on 21/12/2020.
//

import SwiftUI

struct RuneTitleView: View {
    // MARK: - PROPERTIES
    
    var rune: Rune
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            Text(rune.runeName.uppercased())
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .padding()
                .frame(width: 225, height: 50, alignment: .leading)
                .background(Color.gray)
                .cornerRadius(30)
                .padding(.top, 50)
                .padding(.bottom, 15)
        } // :HSTACK
        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.50), radius: 6, x: 0, y: 6)
    }
}

// MARK: - PREVIEW

struct RuneTitleView_Previews: PreviewProvider {
    static var previews: some View {
        RuneTitleView(rune: runeData[0])
    }
}
