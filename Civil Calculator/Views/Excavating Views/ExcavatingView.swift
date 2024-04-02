//
//  ExcavatingView.swift
//  Civil Calculator
//
//  Created by Daniel Miller on 9/17/23.
//

import SwiftUI

struct ExcavatingView: View {
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        ScrollView{
            LazyVGrid(columns: columns, spacing: 20) {
//                ForEach(excavationList, id: \.id) { excavation in ExcavationCard(excavation: excavation)
//                }
                NavigationLink(destination: TopsoilView(), label: {
                    ExcavationCard(excavation: excavationList[0])
                })
                NavigationLink(destination: Pit1View(), label: {
                    ExcavationCard(excavation: excavationList[1])
                })
                NavigationLink(destination: Pit2View(), label: {
                    ExcavationCard(excavation: excavationList[2])
                })
                NavigationLink(destination: Trench1View(), label: {
                    ExcavationCard(excavation: excavationList[3])
                })
                NavigationLink(destination: Trench2View(), label: {
                    ExcavationCard(excavation: excavationList[4])
                })
                NavigationLink(destination: Trench3View(), label: {
                    ExcavationCard(excavation: excavationList[5])
                })
            }
            .padding()
        }
            .navigationBarTitle("Excavating")
    }
}

struct ExcavatingView_Previews: PreviewProvider {
    static var previews: some View {
        ExcavatingView()
    }
}
