//
//  TravelListView.swift
//  TravelCheckList
//
//  Created by Evan Tilley on 3/22/20.
//  Copyright © 2020 Evan Tilley. All rights reserved.
//

import SwiftUI

struct TravelListView: View {
    var body: some View {
        NavigationView{
            List(travelArray){city in
                NavigationLink(destination: TravelDetailView(chosenTravel: city)) {
                    Text(city.name)
                }
                }
            }
        }
    }

struct TravelListView_Previews: PreviewProvider {
    static var previews: some View {
        TravelListView()
    }
}
