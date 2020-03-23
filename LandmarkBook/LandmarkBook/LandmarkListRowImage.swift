//
//  LandmarkListRowImage.swift
//  LandmarkBook
//
//  Created by Evan Tilley on 3/22/20.
//  Copyright © 2020 Evan Tilley. All rights reserved.
//

import SwiftUI

struct LandmarkListRowImage: View {
    var landmarkImageName: String
    
    var body: some View {
        Image(landmarkImageName)
        .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 50, height: 50, alignment: .leading)
    }
}

struct LandmarkListRowImage_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkListRowImage(landmarkImageName: "pisa")
    }
}
