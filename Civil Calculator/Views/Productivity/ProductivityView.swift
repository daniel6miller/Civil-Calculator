//
//  ProductivityView.swift
//  Civil Calculator
//
//  Created by Daniel Miller on 10/28/23.
//

import SwiftUI

struct ProductivityView: View {
    
    @AppStorage("crew") private var crew = 0.00
    @AppStorage("shift") private var shift = 0.00
    @AppStorage("task") private var task = ""
    @AppStorage("ur") private var ur = 1.00
    @AppStorage("claiming") private var claiming = 100.00
    @AppStorage("mh") private var mh = 1.00
    @AppStorage("quantity1") private var quantity = 1.00
    
    var body: some View {
        ScrollView{
            VStack {
                Text("Setup")
                    .font(.largeTitle)
                HStack(alignment: .center) {
                    Text("Task")
                    TextField("Task", text: $task)
                        .multilineTextAlignment(.trailing)
                        .textFieldStyle(.roundedBorder)
                }.padding([.leading, .trailing], 20)
                HStack(alignment: .center) {
                    Text("Crew size")
                    TextField("Crew size", value: $crew, format: .number)
                        .keyboardType(.decimalPad)
                        .multilineTextAlignment(.trailing)
                        .textFieldStyle(.roundedBorder)
                        .scrollDismissesKeyboard(.immediately)
                    Text("workers")
                }.padding([.leading, .trailing], 20)
                HStack(alignment: .center) {
                    Text("Shift Length")
                    TextField("hours", value: $shift, format: .number)
                        .keyboardType(.decimalPad)
                        .multilineTextAlignment(.trailing)
                        .textFieldStyle(.roundedBorder)
                        .scrollDismissesKeyboard(.automatic)
                    Text("hours")
                }.padding([.leading, .trailing], 20)
                HStack(alignment: .center) {
                    Text("Budgeted Unit Rate")
                    TextField("unit rate", value: $ur, format: .number)
                        .keyboardType(.decimalPad)
                        .multilineTextAlignment(.trailing)
                        .textFieldStyle(.roundedBorder)
                    Text("mh/unit")
                }.padding([.leading, .trailing], 20)
                HStack(alignment: .center) {
                    Text("Claiming Scheme")
                    TextField("claiming scheme", value: $claiming, format: .number)
                        .keyboardType(.numberPad)
                        .multilineTextAlignment(.trailing)
                        .textFieldStyle(.roundedBorder)
                    Text("%")
                }.padding([.leading, .trailing], 20)
                HStack(alignment: .center) {
                    Spacer()
                    Text("Budgeted Units")
                        .fontWeight(.bold)
                    Text("\(crew*shift/(ur*claiming/100), specifier: "%.1f")  units")
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
                    Text("Actual Manhours Spent")
                    TextField("MH", value: $mh, format: .number)
                        .keyboardType(.decimalPad)
                        .multilineTextAlignment(.trailing)
                        .textFieldStyle(.roundedBorder)
                    Text("MH")
                }.padding([.leading, .trailing], 20)
                HStack(alignment: .center) {
                    Text("Actual Quantity installed")
                    TextField("Quantity", value: $quantity, format: .number)
                        .keyboardType(.decimalPad)
                        .multilineTextAlignment(.trailing)
                        .textFieldStyle(.roundedBorder)
                    Text("units")
                }.padding([.leading, .trailing], 20)
                HStack(alignment: .center) {
                    Spacer()
                    Text("Actual Unit Rate:")
                        .fontWeight(.bold)
                    Text("\(mh*claiming/100/quantity, specifier: "%.1f") MH/QTY")
                        .fontWeight(.bold)
                        .frame(width:120, height: 30)
                        .background(Color.yellow)
                        .cornerRadius(10)
                }
                HStack(alignment: .center) {
                    Spacer()
                    Text("Actual Manhour Gain/Loss")
                        .fontWeight(.bold)
                    Text("\(quantity*ur*claiming/100-mh, specifier: "%.1f")  MH")
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
        .navigationBarTitle("Productivity")
    }
}

struct ProductivityView_Previews: PreviewProvider {
    static var previews: some View {
        ProductivityView()
    }
}
