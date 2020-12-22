//
//  SettingsView.swift
//  Rune Companion
//
//  Created by Ryan Ball on 21/12/2020.
//

import SwiftUI

struct SettingsView: View {
  // MARK: - PROPERTIES
  
  @Environment(\.presentationMode) var presentationMode
  @AppStorage("reverseRunes") var reverseRunes: Bool = false
  
  // MARK: - BODY

  var body: some View {
    NavigationView {
      ScrollView(.vertical, showsIndicators: false) {
        VStack(spacing: 20) {
          // MARK: - SECTION 1
          
          GroupBox(
            label:
              SettingsLabelView(labelText: "Rune Companion", labelImage: "info.circle")
          ) {
            Divider().padding(.vertical, 4)
            
            HStack(alignment: .center, spacing: 10) {
              Image("Fehu")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .cornerRadius(9)
              
              Text("Runes are an ancient form of oracle used by those seeking advice. Runes have a long history, dating back to ancient use by Germanic and Nordic tribes, and are still widely used in today’s society. Anyone can have a rune reading, but it’s also fun to be able to learn how to use them yourself.")
                .font(.footnote)
            }
          }
          
          // MARK: - SECTION 2
          
          GroupBox(
            label: SettingsLabelView(labelText: "Reversed Runes", labelImage: "paintbrush")
          ) {
            Divider().padding(.vertical, 4)
            
            Text("Some runes can be drawn reversed giving them a different interpretation, You can turn them on here.")
              .padding(.vertical, 8)
              .frame(minHeight: 60)
              .layoutPriority(1)
              .font(.footnote)
              .multilineTextAlignment(.leading)
            
            Toggle(isOn: $reverseRunes) {
              if reverseRunes {
                Text("Runes Reversed".uppercased())
                  .fontWeight(.bold)
                  .foregroundColor(Color.green)
              } else {
                Text(" Use Reversed Runes".uppercased())
                  .fontWeight(.bold)
                  .foregroundColor(Color.secondary)
              }
            }
            .padding()
            .background(
              Color(UIColor.tertiarySystemBackground)
                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
            )
          }
          
          // MARK: - SECTION 3
          
          GroupBox(
            label:
            SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
          ) {
            SettingsRowView(name: "Developer", content: "Elfuthark Apps")
            SettingsRowView(name: "Designer", content: "Ryan Ball")
            SettingsRowView(name: "Compatibility", content: "iOS 14")
            SettingsRowView(name: "Website", linkLabel: "Elfuthark Apps", linkDestination: "elfuthark.com")
            SettingsRowView(name: "Twitter", linkLabel: "@elfuthark", linkDestination: "twitter.com/elfuthark")
            SettingsRowView(name: "SwiftUI", content: "2.0")
            SettingsRowView(name: "Version", content: "1.0.0")
          }
          
        } //: VSTACK
        .navigationBarTitle(Text("Settings"), displayMode: .large)
        .navigationBarItems(
          trailing:
            Button(action: {
              presentationMode.wrappedValue.dismiss()
            }) {
              Image(systemName: "xmark")
            }
        )
        .padding()
      } //: SCROLL
    } //: NAVIGATION
  }
}

// MARK: - PREVIEW

struct SettingsView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsView()
      .preferredColorScheme(.dark)
      .previewDevice("iPhone 12 Pro Max")
  }
}

