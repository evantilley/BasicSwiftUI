//
//  LandmarkModel.swift
//  LandmarkBook
//
//  Created by Evan Tilley on 3/22/20.
//  Copyright © 2020 Evan Tilley. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Landmark: Identifiable{
    var id: Int
    var name: String
    var imageName: String
    var country: String
    var category: String
    var coordinates: Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
}

struct Coordinates {
    var latitude: Double
    var longitude: Double
}

let eiffelLandmark = Landmark(id: 0, name: "Eiffel", imageName: "eiffel", country: "France", category: "Tower", coordinates: Coordinates(latitude: 48.86, longitude: 2.29))

let colosseumLandmark = Landmark(id: 1, name: "Colosseum", imageName: "colosseum", country: "Italy", category: "Historic Area", coordinates: Coordinates(latitude: 41.9, longitude: 12.5))

let londonBridgeLandmark = Landmark(id: 2, name: "London Bridge", imageName: "londonbridge", country: "UK", category: "Bridge", coordinates: Coordinates(latitude: 51.51, longitude: -0.0899))

let pisaLandmark = Landmark(id: 3, name: "Pisa", imageName: "pisa", country: "Italy", category: "Tower", coordinates: Coordinates(latitude: 43.7229503, longitude: 10.39))

let sydneyLandmark = Landmark(id: 4, name: "Syndey Opera House", imageName: "sydney", country: "Australia", category: "Opera House", coordinates: Coordinates(latitude: -33.85678, longitude: 151.213))

let landmarkArray = [eiffelLandmark, colosseumLandmark, londonBridgeLandmark, pisaLandmark, sydneyLandmark]
