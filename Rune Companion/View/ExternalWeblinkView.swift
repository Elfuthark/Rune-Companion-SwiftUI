//
//  ExternalWeblinkView.swift
//  Rune Companion
//
//  Created by Ryan Ball on 21/12/2020.
//

import SwiftUI

struct ExternalWeblinkView: View {
  // MARK: - PROPERTIES
  
  let rune: Rune

  // MARK: - BODY

  var body: some View {
    GroupBox {
      HStack {
        Image(systemName: "globe")
        Text("Wikipedia")
        Spacer()
        
        Group {
          Image(systemName: "arrow.up.right.square")
          
          Link(rune.runeName, destination: (URL(string: rune.runeLink) ?? URL(string: "https://wikipedia.org"))!)
        }
        .foregroundColor(.accentColor)
      } //: HSTACK
    } //: BOX
  }
}

// MARK: - PREIVEW

struct ExternalWeblinkView_Previews: PreviewProvider {
  
  
  static var previews: some View {
    ExternalWeblinkView(rune: runeData[0])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}

