//
//  Musician.swift
//  DetailedViews
//
//  Created by Evan Tilley on 3/21/20.
//  Copyright © 2020 Evan Tilley. All rights reserved.
//

import Foundation
import SwiftUI

struct Muscician: Identifiable{ //conforms to identfiable so you can use in List()
    var id = UUID()
    var genre: String
    var bands: [String]
}

let rock = Muscician(genre: "Rock", bands: ["Deep Purple", "Led Zeppelin", "Pink Floyd"])

let metal = Muscician(genre: "Metal", bands: ["Metallica", "Megadeth", "Iron Maiden"])

let pop = Muscician(genre: "Pop", bands: ["Madonna", "Rihanna", "Beyonce"])

let musicianArray = [rock, metal, pop]
