//
//  ContentView.swift
//  TravelCheckList
//
//  Created by Evan Tilley on 3/22/20.
//  Copyright © 2020 Evan Tilley. All rights reserved.
//

import SwiftUI

//@State tracks current state of
//variable and updates view if
//the state(i.e. value) changes



struct ContentView: View {
    
    //variable is state variable
    @State var characterName = "Luke Skywalker"
    
    
    var body: some View {
        VStack{
            Text(characterName)
                .padding()
                .font(.largeTitle)
            
            Button(action:{
                self.characterName = "Yoda"
            }){
                Text("Change character")
            }
            
            //$ makes variable binding - whenever you change textfield value, it also changes character name, and, since it is a @state variable this will update views associated with characterName
            TextField("Enter character:", text: $characterName)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
