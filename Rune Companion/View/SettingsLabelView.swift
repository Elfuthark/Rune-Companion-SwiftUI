//
//  SettingsLabelView.swift
//  Rune Companion
//
//  Created by Ryan Ball on 21/12/2020.
//

import SwiftUI

struct SettingsLabelView: View {
  // MARK: - PROPERTIES
  
  var labelText: String
  var labelImage: String

  // MARK: - BODY

  var body: some View {
    HStack {
      Text(labelText.uppercased()).fontWeight(.bold)
      Spacer()
      Image(systemName: labelImage)
    }
  }
}

// MARK: - PREVIEW

struct SettingsLabelView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsLabelView(labelText: "Rune Companion", labelImage: "info.circle")
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
