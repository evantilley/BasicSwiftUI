//
//  ListSectionExampleView.swift
//  DetailedViews
//
//  Created by Evan Tilley on 3/21/20.
//  Copyright © 2020 Evan Tilley. All rights reserved.
//

import SwiftUI

struct ListSectionExampleView: View {
    var body: some View {
        List{
            ForEach(musicianArray){musician in
                Section(header: Text(musician.genre)) {
                    ForEach(musician.bands, id: \.self){ band in
                        Text(band)
                    }
                }
            }
        }
    }
}

struct ListSectionExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ListSectionExampleView()
    }
}
