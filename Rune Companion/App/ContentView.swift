//
//  ContentView.swift
//  Rune Companion
//
//  Created by Ryan Ball on 09/12/2020.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    @State private var isShowingSettings: Bool = false
    
    var rune: [Rune] = runeData
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            List {
                ForEach(rune) { item in
                    NavigationLink(destination: RuneDetailView(rune: item)) {
                        RuneRowView(rune: item)
                            .padding(.vertical, 4)
                            
                    }
                }
            }
            .navigationTitle("Rune Companion")
            .navigationBarItems(
              trailing:
                Button(action: {
                  isShowingSettings = true
                }) {
                  Image(systemName: "slider.horizontal.3")
                } //: BUTTON
                .sheet(isPresented: $isShowingSettings) {
                  SettingsView()
                }
            )
        } //: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(rune: runeData)
            .previewDevice("iPhone 12 Pro")
    }
}
