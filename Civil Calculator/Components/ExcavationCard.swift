//
//  ExcavationCard.swift
//  Civil Calculator
//
//  Created by Daniel Miller on 9/16/23.
//

import SwiftUI

struct ExcavationCard: View {
    var excavation: Excavation
    
    var body: some View {
        ZStack(alignment: .top) {
            Image(excavation.image)
                .resizable()
                .cornerRadius(20)
                .frame(width: 180)
                .scaledToFit()
            
            Text(excavation.name)
                .bold()
                .frame(width: 160, alignment: .center)
        }
        .frame(width: 180, height: 250)
        .shadow(radius:3)
    }
}


struct ExcavationCard_Previews: PreviewProvider {
    static var previews: some View {
        ExcavationCard(excavation: excavationList[0])
    }
}
