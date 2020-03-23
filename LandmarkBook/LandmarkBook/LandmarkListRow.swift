//
//  LandmarkListRow.swift
//  LandmarkBook
//
//  Created by Evan Tilley on 3/22/20.
//  Copyright © 2020 Evan Tilley. All rights reserved.
//

import SwiftUI

struct LandmarkListRow: View {
    var landmark: Landmark
    var body: some View {
        HStack{
            LandmarkListRowImage(landmarkImageName: landmark.imageName)
            Text(landmark.name)
        }
    }
}

struct LandmarkListRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkListRow(landmark: londonBridgeLandmark)
    }
}
