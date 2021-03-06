//
//  RuneHeaderView.swift
//  Rune Companion
//
//  Created by Ryan Ball on 15/12/2020.
//

import SwiftUI

struct RuneHeaderView: View {
    // MARK: - PROPERTIES
    
    var rune: Rune
    
    @State private var isAnimatingImage: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.gray, .gray]), startPoint: .top, endPoint: .bottom)
            
            Image(rune.runeName)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.50), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
              
        } //: ZSTACK
        .frame(height: 350)
        .cornerRadius(25)
        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.50), radius: 6, x: 0, y: 6)
        .padding()
        .offset(y: 75)
    }
}

// MARK: - PREVIEW

struct RuneHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        RuneHeaderView(rune: runeData[0])
            .previewDevice("iPhone 12 Pro")
    }
}

