//
//  ListExampleView.swift
//  DetailedViews
//
//  Created by Evan Tilley on 3/21/20.
//  Copyright © 2020 Evan Tilley. All rights reserved.
//

import SwiftUI

struct ListExampleView: View {
    let myArray = ["James", "Lars", "Kirk", "Rob"]
    var body: some View {
        /*
        List{
            ForEach(myArray,id: \.self){ element in
                Text(element)
            }
        }
 */
        List(myArray, id: \.self){element in
            Text(element)
        }
    }
}

struct ListExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ListExampleView()
    }
}
