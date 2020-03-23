//
//  NavigationFirstView.swift
//  DetailedViews
//
//  Created by Evan Tilley on 3/21/20.
//  Copyright © 2020 Evan Tilley. All rights reserved.
//

import SwiftUI

struct NavigationFirstView: View {
    var body: some View {
        NavigationView{
            VStack{
                MetallicaImage(image: Image("Metallica2"))
                Button(action: {
                    print("test")
                }) {
                  Text("Button")//label
                }
                
                //button for changing views
                NavigationLink(destination: NavigationSecondView()) {
                    Text("Navigation Link")
                }.padding()
            }.navigationBarTitle(Text("First View"))
        }
    }
}

struct NavigationFirstView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationFirstView()
    }
}
