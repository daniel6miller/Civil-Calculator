//
//  PipeGradeView.swift
//  Civil Calculator
//
//  Created by Daniel Miller on 10/26/23.
//

import SwiftUI

struct PipeGradeView: View {
        
    @AppStorage("structelevation") private var structelevation: Double = 0.00
    @AppStorage("structdist") private var structdist: Double = 0.00
    @AppStorage("slope") private var slope: Double = 0.00
    @AppStorage("bmelevation") private var bmelevation: Double = 0.00
    @AppStorage("bmrod") private var bmrod: Double = 0.00
    @AppStorage("piperod") private var piperod: Double = 0.00
        
    var body: some View {
        ScrollView{
            VStack {
                Text("Design")
                    .font(.title)
                HStack(alignment: .center) {
                    Text("Structure Flow Line Elevation")
                    TextField("Elevation", value: $structelevation, format: .number)
                        .keyboardType(.decimalPad)
                        .multilineTextAlignment(.trailing)
                        .textFieldStyle(.roundedBorder)
                    Text("ft")
                }.padding([.leading, .trailing], 20)
                HStack(alignment: .center) {
                    Text("Distance from Structure")
                    TextField("Elevation", value: $structdist, format: .number)
                        .keyboardType(.decimalPad)
                        .multilineTextAlignment(.trailing)
                        .textFieldStyle(.roundedBorder)
                    Text("ft")
                }.padding([.leading, .trailing], 20)
                HStack(alignment: .center) {
                    Text("Slope +/-")
                    TextField("Elevation", value: $slope, format: .number)
                        .keyboardType(.decimalPad)
                        .multilineTextAlignment(.trailing)
                        .textFieldStyle(.roundedBorder)
                    Text("%")
                }.padding([.leading, .trailing], 20)
                HStack(alignment: .center) {
                    Spacer()
                    Text("Design flow line elevation :")
                        .fontWeight(.bold)
                    Text("\(structelevation+structdist*slope/100, specifier: "%.3f")  ft")
                        .fontWeight(.bold)
                        .frame(width:120, height: 30)
                        .background(Color.yellow)
                        .cornerRadius(10)
                }
            }
            Spacer()
            VStack {
                Text("Actuals")
                    .font(.title)
                HStack(alignment: .center) {
                    Text("Benchmark Elevation")
                    TextField("Elevation", value: $bmelevation, format: .number)
                        .keyboardType(.decimalPad)
                        .multilineTextAlignment(.trailing)
                        .textFieldStyle(.roundedBorder)
                    Text("ft")
                }.padding([.leading, .trailing], 20)
                HStack(alignment: .center) {
                    Text("Benchmark Rod Reading")
                    TextField("Elevation", value: $bmrod, format: .number)
                        .keyboardType(.decimalPad)
                        .multilineTextAlignment(.trailing)
                        .textFieldStyle(.roundedBorder)
                    Text("ft")
                }.padding([.leading, .trailing], 20)
                HStack(alignment: .center) {
                    Spacer()
                    Text("Height of Instrument :")
                        .fontWeight(.bold)
                    Text("\(bmelevation+bmrod, specifier: "%.3f")  ft")
                        .fontWeight(.bold)
                        .frame(width:120, height: 30)
                        .background(Color.yellow)
                        .cornerRadius(10)
                }
                HStack(alignment: .center) {
                    Text("Flow line Rod Reading")
                    TextField("Elevation", value: $piperod, format: .number)
                        .keyboardType(.decimalPad)
                        .multilineTextAlignment(.trailing)
                        .textFieldStyle(.roundedBorder)
                    Text("ft")
                }.padding([.leading, .trailing], 20)
                HStack(alignment: .center) {
                    Spacer()
                    Text("Flow line Pipe:")
                        .fontWeight(.bold)
                    Text("\(bmelevation+bmrod-piperod, specifier: "%.3f")  ft")
                        .fontWeight(.bold)
                        .frame(width:120, height: 30)
                        .background(Color.yellow)
                        .cornerRadius(10)
                }
                HStack(alignment: .center) {
                    Spacer()
                    Text("Cut or fill to flow line:")
                        .fontWeight(.bold)
                    Text("\(bmelevation+bmrod-piperod-structelevation-(structdist*slope/100), specifier: "%.3f")  ft")
                        .fontWeight(.bold)
                        .frame(width:120, height: 30)
                        .background(Color.yellow)
                        .cornerRadius(10)
                }
            }
            Spacer()
            HStack {
                VStack(alignment: .center) {
                    Text("Stick")
                        .fontWeight(.bold)
                    Text("1st stick:")
                        .fontWeight(.bold)
                    Text("2nd stick:")
                        .fontWeight(.bold)
                    Text("3rd stick:")
                        .fontWeight(.bold)
                    Text("4th stick:")
                        .fontWeight(.bold)
                    Text("5th stick:")
                        .fontWeight(.bold)
                    Text("6th stick:")
                        .fontWeight(.bold)
                }
                VStack(alignment: .center) {
                    Text("Design Rod Reading")
                        .fontWeight(.bold)
                    Text("\(bmelevation+bmrod-structelevation-(structdist*slope/100), specifier: "%.3f")  ft")
                        .fontWeight(.bold)
                    Text("\(bmelevation+bmrod-structelevation-((structdist+8)*slope/100), specifier: "%.3f")  ft")
                        .fontWeight(.bold)
                    Text("\(bmelevation+bmrod-structelevation-((structdist+16)*slope/100), specifier: "%.3f")  ft")
                        .fontWeight(.bold)
                    Text("\(bmelevation+bmrod-structelevation-((structdist+24)*slope/100), specifier: "%.3f")  ft")
                        .fontWeight(.bold)
                    Text("\(bmelevation+bmrod-structelevation-((structdist+32)*slope/100), specifier: "%.3f")  ft")
                        .fontWeight(.bold)
                    Text("\(bmelevation+bmrod-structelevation-((structdist+40)*slope/100), specifier: "%.3f")  ft")
                        .fontWeight(.bold)
                }
            }
            Text(Date(), style: .date)
                .font(.title3)
                .fontWeight(.bold)
        }
        .scrollDismissesKeyboard(.interactively)
        .navigationBarTitle("Pipe Grade")
    }
}


struct PipeGradeView_Previews: PreviewProvider {
    static var previews: some View {
        PipeGradeView()
    }
}
