//
//  ContentView.swift
//  CatchTheKenny
//
//  Created by Evan Tilley on 3/23/20.
//  Copyright © 2020 Evan Tilley. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var score = 0
    @State var timeLeft = 10.0
    
    var body: some View {
        VStack{
            Spacer()
                .frame(height: 130)
            Text("Catch The Kenny")
                .font(.largeTitle)
            Text("Time Left: \(self.timeLeft)")
                .font(.title)
            Text("Score: \(self.score)")
                .font(.title)
            
            Spacer()
            
        Image("kenny")
        .resizable()
            .frame(width: UIScreen.main.bounds.width * 0.25, height: UIScreen.main.bounds.height * 0.15)
            Spacer()
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
