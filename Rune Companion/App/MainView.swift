//
//  MainView.swift
//  Rune Companion
//
//  Created by Ryan Ball on 21/12/2020.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "books.vertical")
                    Text("Reference")
                }
            
            RuneCastView()
                .tabItem {
                    Image(systemName: "flame")
                    Text("Cast")
                }
            
            RuneTutorialView()
                .tabItem {
                    Image(systemName: "book")
                    Text("Tutorial")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
