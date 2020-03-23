//
//  ContentView.swift
//  FirstSwiftUI
//
//  Created by Evan Tilley on 3/21/20.
//  Copyright © 2020 Evan Tilley. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack() {
            Text("Metallica App")
            .foregroundColor(Color.blue)
                .padding()
                .font(.largeTitle)
            
            Text("Welcome")
                .font(.footnote)
                .padding()
            
            ZStack{
                Image("metallica")
                .resizable()
                .aspectRatio(contentMode: .fit)
                Text("Metallica")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                
            }
            HStack{
                Text("Kirk")
                Text("Lars")
                Text("Rob")
                Text("James")
            }
            Spacer()
            Button(action: {
                //action when button pressed
            }) {
                Text(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/)
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
