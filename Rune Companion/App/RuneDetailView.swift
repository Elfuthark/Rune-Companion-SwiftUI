//
//  RuneDetailView.swift
//  Rune Companion
//
//  Created by Ryan Ball on 15/12/2020.
//

import SwiftUI

struct RuneDetailView: View {
    // MARK: - PROPERTIES
    
    var rune: Rune
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    
                    VStack(alignment: .leading, spacing: 20) {
                        
                        // HEADER
                        RuneHeaderView(rune: rune)
                        Spacer()
                        // TITLE
                        Text(rune.runeName)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(Color.black)
                            .padding(.top, 40)
                           // .offset(y: 60)
                        
                        // DESCRIPTION
                        Text(rune.runeDescription)
                            .multilineTextAlignment(.leading)
                          //  .offset(y: 50)
                    } //: VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } //: VSTACK
                .navigationBarTitle(rune.runeName, displayMode: .inline)
                .navigationBarHidden(true)
            } //: SCROLL
            .edgesIgnoringSafeArea(.top)
        } //: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

// MARK: - PREVIEW

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RuneDetailView(rune: runeData[0])
            .previewDevice("iPhone 12 Pro Max")
    }
}
