//
//  NavigationSecondView.swift
//  DetailedViews
//
//  Created by Evan Tilley on 3/21/20.
//  Copyright © 2020 Evan Tilley. All rights reserved.
//

import SwiftUI

struct NavigationSecondView: View {
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text("Second View Controller")
        }.navigationBarTitle(Text("Second View")) //will show up when you navigate from the first view, since the first view has a Navigation Bar
    }
}

struct NavigationSecondView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationSecondView()
    }
}
