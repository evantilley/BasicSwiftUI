//
//  TravelCheckModel.swift
//  TravelCheckList
//
//  Created by Evan Tilley on 3/22/20.
//  Copyright © 2020 Evan Tilley. All rights reserved.
//

import SwiftUI

struct TravelCheckModel: Identifiable{
    var id = UUID()
    var name: String
    var description: String
    
}

var TravelCheck1 = TravelCheckModel(name: "Istanbul", description: "Nice city")
var TravelCheck2 = TravelCheckModel(name: "Paris", description: "Love city")
var TravelCheck3 = TravelCheckModel(name: "Las Vegas", description: "Sin city")

var travelArray = [TravelCheck1, TravelCheck2, TravelCheck3]
