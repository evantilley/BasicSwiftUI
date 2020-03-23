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
    @State var chosenX = 200
    @State var chosenY = 200
    @State var showAlert = false
    
    //position tuples
    let (x1, y1) = (200, 100)
    let (x2, y2) = (70, 100)
    let (x3, y3) = (330, 100)
    let (x4, y4) = (200, 270)
    let (x5, y5) = (70, 270)
    let (x6, y6) = (330, 270)
    let (x7, y7) = (200, 50)
    let (x8, y8) = (70, 50)
    let (x9, y9) = (330, 270)
    
    var counterTimer: Timer{
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            if self.timeLeft < 0.5 {
                self.showAlert = true
            } else{
                self.timeLeft -= 1
            }
        }
    }

    var timer : Timer{
        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { _ in
            //what happens each time timer fires
            let tupleArray = [(self.x1, self.y1), (self.x2, self.y2),(self.x3, self.y3),(self.x4, self.y4),(self.x5, self.y5),(self.x6, self.y6),(self.x7, self.y7),(self.x8, self.y8),
                (self.x9, self.y9)]
            
            var previousNumber: Int?
            //create random number between 0 and 8
            func randomNumberGenerator() -> Int{
                var randomNumber = Int(arc4random_uniform(UInt32(tupleArray.count - 1)))
                while (previousNumber == randomNumber){
                                    randomNumber = Int(arc4random_uniform(UInt32(tupleArray.count - 1)))
                }
                
                previousNumber = randomNumber
                return randomNumber
            }
            
            
            
            
            self.chosenX = tupleArray[randomNumberGenerator()].0
            self.chosenY = tupleArray[randomNumberGenerator()].1
        }
    }
    
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
            
            
        Image("kenny")
        .resizable()
            .frame(width: 100, height: 130)
            .position(x: CGFloat(chosenX), y: CGFloat(chosenY))
            //count is how many times you have to tap on kenny
            .gesture(TapGesture(count: 1).onEnded({ (_) in
                self.score += 1
            }))
            .onAppear {
                _ = self.timer
                _ = self.counterTimer
            }
        }.alert(isPresented: $showAlert) {
            return Alert(title: Text("Time Over!"), message: Text("Do you want to play again?"), primaryButton: Alert.Button.default(Text("OK"), action: {
                //OK button action
                self.score = 0
                self.timeLeft = 10
                self.showAlert = false
            }), secondaryButton: Alert.Button.cancel())
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
