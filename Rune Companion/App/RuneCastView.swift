//
//  RuneCastView.swift
//  Rune Companion
//
//  Created by Ryan Ball on 15/12/2020.
//

import SwiftUI

struct RuneCastView: View {
    // MARK: - PROPERTIES
    
    @State private var runeCastSelected = 0
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            VStack {
                Picker(selection: $runeCastSelected, label: Text("Pick your rune cast?")) {
                    Text("One Rune").tag(0)
                    Text("Three Rune").tag(1)
                    Text("Five Rune").tag(2)
                    Text("Nine Rune").tag(3)
                }.pickerStyle(SegmentedPickerStyle())
            } // :VSTACK
            .navigationBarTitle("Rune Cast")
        } // :NAVIGATION
    }
}

// MARK: - PREVIEW

struct RuneCastView_Previews: PreviewProvider {
    static var previews: some View {
        RuneCastView()
    }
}
