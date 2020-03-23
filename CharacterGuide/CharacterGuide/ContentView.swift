//
//  ContentView.swift
//  CharacterGuide
//
//  Created by Evan Tilley on 3/22/20.
//  Copyright © 2020 Evan Tilley. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(superheroArray){superhero in
            ListRow(superhero: superhero)
        }
    }
}

//this won't matter when we build for
//release - just for testing/debug section
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView().previewDevice("iPhone 8").previewDisplayName("iPhone 8")
            ContentView().previewDevice("iPhone XR").previewDisplayName("iPhone XR")
        }
        
    }
}
