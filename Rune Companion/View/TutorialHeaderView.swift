//
//  TutorialHeaderView.swift
//  Rune Companion
//
//  Created by Ryan Ball on 22/12/2020.
//

import SwiftUI

struct TutorialHeaderView: View {
    var body: some View {
        Image("RuneBag")
            .resizable()
            .scaledToFill()
            .frame(width: 325, height: 325)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 8))
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.50), radius: 8, x: 6, y: 8)
            .padding()
    }
}

struct TutorialHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialHeaderView()
    }
}
