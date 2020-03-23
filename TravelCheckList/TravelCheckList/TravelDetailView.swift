//
//  TravelDetailView.swift
//  TravelCheckList
//
//  Created by Evan Tilley on 3/22/20.
//  Copyright © 2020 Evan Tilley. All rights reserved.
//

import SwiftUI

struct TravelDetailView: View {
    var chosenTravel: TravelCheckModel
    @State var seen = false
    
    
    var body: some View {
        VStack{
        Text(chosenTravel.name)
            .font(.largeTitle)
            .frame(width: 200)
            .foregroundColor(self.seen ? .blue : .black)
        .padding()
        Text(chosenTravel.description)
            .font(.largeTitle)
            .padding()
            
            SeenButton(seenOrNot: $seen)
            

        }
    }
}

struct TravelDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TravelDetailView(chosenTravel: TravelCheck1)
    }
}
