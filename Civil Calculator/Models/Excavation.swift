//
//  Excavation.swift
//  Civil Calculator
//
//  Created by Daniel Miller on 9/16/23.
//

import Foundation
import SwiftUI

struct Excavation: Identifiable {
    var id = UUID()
    var name: String
    var image: String
}

var excavationList = [Excavation(name: "Topsoil", image: "Topsoil"),
                      Excavation(name: "Pit", image: "Pit1"),
                      Excavation(name: "Pit - Sloped or Benched", image: "Pit2"),
                      Excavation(name: "Trench", image: "Trench1"),
                      Excavation(name: "Trench - Sloped or Benched", image: "Trench2"),
                      Excavation(name: "Trench to Sloped or Benched", image: "Trench3")
]
