//
//  RuneRowView.swift
//  Rune Companion
//
//  Created by Ryan Ball on 14/12/2020.
//

import SwiftUI

struct RuneRowView: View {
    // MARK: - PROPERTIES
    
    var rune: Rune
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            Image(rune.runeImage)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .padding(6)
                .background(Color.gray)
                .cornerRadius(20)
            
            VStack(alignment: .leading, spacing: 5, content: {
                Text(rune.runeName)
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.leading, 10)
                Text(rune.runeProperty)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
                    .padding(.leading, 10)
            })
        } //: HSTACK
    }
}

// MARK: - PREVIEW

struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        RuneRowView(rune: runeData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

