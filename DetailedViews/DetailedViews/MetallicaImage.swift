//
//  MetallicaImage.swift
//  DetailedViews
//
//  Created by Evan Tilley on 3/21/20.
//  Copyright © 2020 Evan Tilley. All rights reserved.
//

import SwiftUI

struct MetallicaImage: View {
    
    var image: Image //image as paramater
    
    var body: some View {
            image
            .resizable() //need this so image is resizable
            .aspectRatio(contentMode: .fit)
            .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.3)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 6))
            .shadow(radius: 10)
        .padding()
    }
}

struct MetallicaImage_Previews: PreviewProvider {
    static var previews: some View {
        MetallicaImage(image: Image("Metallica"))
    }
}
