//
//  superheroModel.swift
//  CharacterGuide
//
//  Created by Evan Tilley on 3/23/20.
//  Copyright © 2020 Evan Tilley. All rights reserved.
//

import SwiftUI

struct superheroModel: Identifiable{
    var id = UUID()
    var name: String
    var imageName: String
    var universe: String
}

let superman = superheroModel(name: "Character: Superman", imageName: "superman", universe: "Universe: DC")

let batman = superheroModel(name: "Character: Batman", imageName: "batman", universe: "Universe: DC")

let ironman = superheroModel(name: "Character: Ironman", imageName: "ironman", universe: "Universe: Marvel")

let superheroArray = [superman, batman, ironman]
