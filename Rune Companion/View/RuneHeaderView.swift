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
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
              
        } //: ZSTACK
        .frame(height: 440)
        .cornerRadius(25)
        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.30), radius: 8, x: 6, y: 8)
        .padding()
        .offset(y: 75)
    }
}


