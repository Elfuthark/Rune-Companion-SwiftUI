//
//  RuneModel.swift
//  Rune Companion
//
//  Created by Ryan Ball on 05/07/2020.
//

import SwiftUI

// MARK: - RUNES DATA MODEL

struct Rune: Identifiable {
    var id = UUID()
    var runeName: String
    var runeProperty: String
    var runeImage: String
    var runeDescription: String
}
