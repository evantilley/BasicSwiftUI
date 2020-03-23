//
//  ContentView.swift
//  DetailedViews
//
//  Created by Evan Tilley on 3/21/20.
//  Copyright © 2020 Evan Tilley. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            MetallicaImage(image: Image("Metallica"))
            MetallicaImage(image: Image("Metallica2"))
            HStack{
                Text("Hello, World")
                    .foregroundColor(Color.orange)
                    .background(Color.black)
                    .font(.largeTitle)
                    .frame(width: UIScreen.main.bounds.width * 0.5, height: UIScreen.main.bounds.height * 0.1)
                
                Text("Metallica")
                    .fontWeight(.light)
                    .foregroundColor(Color.red)
                    .font(.largeTitle)
                    .frame(width: 200, height: 100)
                    .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.height * 0.1)
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
