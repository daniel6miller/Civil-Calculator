//
//  HaulDirtView.swift
//  Civil Calculator
//
//  Created by Daniel Miller on 10/28/23.
//

import SwiftUI

struct HaulDirtView: View {
    
    @AppStorage("trucks") private var trucks = 0.00
    @AppStorage("cy1") private var cy1 = 0.00
    @AppStorage("cy2") private var cy2 = 0.00
    @AppStorage("cycle") private var cycle = 0.00
    @AppStorage("time") private var time = 0.00
    @AppStorage("loads") private var loads = 0.00
    
    var body: some View {
        ScrollView{
            VStack {
                Text("Setup")
                    .font(.largeTitle)
                HStack(alignment: .center) {
                    Text("Number of Trucks")
                    TextField("trucks", value: $trucks, format: .number)
                        .keyboardType(.decimalPad)
                        .multilineTextAlignment(.trailing)
                        .textFieldStyle(.roundedBorder)
                    Text("trucks")
                }.padding([.leading, .trailing], 20)
                HStack(alignment: .center) {
                    Text("CY on each truck")
                    TextField("CY", value: $cy1, format: .number)
                        .keyboardType(.decimalPad)
                        .multilineTextAlignment(.trailing)
                        .textFieldStyle(.roundedBorder)
                    Text("CY")
                }.padding([.leading, .trailing], 20)
                HStack(alignment: .center) {
                    Text("Cycle Time")
                    TextField("Cycle time", value: $cycle, format: .number)
                        .keyboardType(.decimalPad)
                        .multilineTextAlignment(.trailing)
                        .textFieldStyle(.roundedBorder)
                    Text("min")
                }.padding([.leading, .trailing], 20)
                HStack(alignment: .center) {
                    Spacer()
                    Text("CY per hour :")
                        .fontWeight(.bold)
                    Text("\(trucks*cy1*60/cycle, specifier: "%.1f")  CY/hr")
                        .fontWeight(.bold)
                        .frame(width:120, height: 30)
                        .background(Color.yellow)
                        .cornerRadius(10)
                }
                HStack(alignment: .center) {
                    Text("Haul Time")
                    TextField("Haul Time", value: $time, format: .number)
                        .keyboardType(.decimalPad)
                        .multilineTextAlignment(.trailing)
                        .textFieldStyle(.roundedBorder)
                    Text("hours")
                }.padding([.leading, .trailing], 20)
                HStack(alignment: .center) {
                    Spacer()
                    Text("Expected CY:")
                        .fontWeight(.bold)
                    Text("\(trucks*cy1*time*60/cycle, specifier: "%.1f")  CY")
                        .fontWeight(.bold)
                        .frame(width:120, height: 30)
                        .background(Color.yellow)
                        .cornerRadius(10)
                }
            }
            VStack {
                Text("Actuals")
                    .font(.largeTitle)
                HStack(alignment: .center) {
                    Text("Actual CY on each truck")
                    TextField("CY", value: $cy2, format: .number)
                        .keyboardType(.decimalPad)
                        .multilineTextAlignment(.trailing)
                        .textFieldStyle(.roundedBorder)
                    Text("CY")
                }.padding([.leading, .trailing], 20)
                HStack(alignment: .center) {
                    Text("Actual Loads")
                    TextField("Loads", value: $loads, format: .number)
                        .keyboardType(.decimalPad)
                        .multilineTextAlignment(.trailing)
                        .textFieldStyle(.roundedBorder)
                    Text("loads")
                }.padding([.leading, .trailing], 20)
                HStack(alignment: .center) {
                    Spacer()
                    Text("Actual CY:")
                        .fontWeight(.bold)
                    Text("\(loads*cy2, specifier: "%.1f")  CY")
                        .fontWeight(.bold)
                        .frame(width:120, height: 30)
                        .background(Color.yellow)
                        .cornerRadius(10)
                }
            }
            Text(Date(), style: .date)
                .font(.title3)
                .fontWeight(.bold)
        }
        .scrollDismissesKeyboard(.interactively)
        .navigationBarTitle("Haul Dirt")
    }
}

struct HaulDirtView_Previews: PreviewProvider {
    static var previews: some View {
        HaulDirtView()
    }
}
