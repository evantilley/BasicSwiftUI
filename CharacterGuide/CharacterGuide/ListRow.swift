//
//  ListRow.swift
//  CharacterGuide
//
//  Created by Evan Tilley on 3/22/20.
//  Copyright © 2020 Evan Tilley. All rights reserved.
//

import SwiftUI

struct ListRow: View {
    
    let superhero: superheroModel
    
    
    var body: some View {
        HStack{
            Image(superhero.imageName)
            .resizable()
                .frame(width: UIScreen.main.bounds.width * 0.2, height: UIScreen.main.bounds.height * 0.1, alignment: .leading)
            Spacer()
            VStack{
                Text(superhero.name)
                    .padding()
                Text(superhero.universe)
            }
        }.padding()
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{ ListRow(superhero: superheroArray[0]).previewLayout(.sizeThatFits).environment(\.sizeCategory, .extraExtraExtraLarge)
            ListRow(superhero: superheroArray[1]).previewLayout(.sizeThatFits).environment(\.sizeCategory, .extraSmall)
            ListRow(superhero: superheroArray[2]).previewLayout(.sizeThatFits).environment(\.sizeCategory, .medium)
        }
    }
}
