//
//  SeenButton.swift
//  TravelCheckList
//
//  Created by Evan Tilley on 3/22/20.
//  Copyright © 2020 Evan Tilley. All rights reserved.
//

import SwiftUI

struct SeenButton: View {
    
    @Binding var seenOrNot: Bool
    
    var body: some View {
        Button(action:{
            self.seenOrNot.toggle()
        }){
            Text("Seen/Not Seen")
        }
    }
}

struct SeenButton_Previews: PreviewProvider {
    static var previews: some View {
        Text("test")
    }
}
