//
//  FirstScreen.swift
//  TravelCheckList
//
//  Created by Evan Tilley on 3/22/20.
//  Copyright © 2020 Evan Tilley. All rights reserved.
//

import SwiftUI

struct FirstScreen: View {
    
    @State var shown = false
    @State var number = 3
    
    
    var body: some View {
        VStack{
            HStack{
                Button(action: {
                    self.number -= 1
                }){
                    Text("-")
                }
            Text(String(number))
                .font(.largeTitle)
                .padding()
                Button(action: {
                    self.number += 1
                }){
                    Text("+")
                }
            }
            Button(action: {
                if self.number > 5{
                    self.shown.toggle()
                }
            }){
                Text("Go to second view")
            }.sheet(isPresented: $shown) { () -> SecondScreen in
                return SecondScreen()
            }
            //if shown is true, show second screen, if shown is false, don't
        }

    }
}

struct FirstScreen_Previews: PreviewProvider {
    static var previews: some View {
        FirstScreen()
    }
}
