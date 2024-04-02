//
//  Pit2View.swift
//  Civil Calculator
//
//  Created by Daniel Miller on 9/17/23.
//

import SwiftUI

struct Pit2View: View {
    
    @AppStorage("topLength1") private var topLength = 0.00
    @AppStorage("topWidth1") private var topWidth = 0.00
    @AppStorage("depth3") private var depth = 1.00
    @AppStorage("bottomLength1") private var bottomLength = 0.00
    @AppStorage("bottomWidth1") private var bottomWidth = 0.00
    @AppStorage("swellFactor3") private var swellFactor = 1.00
    
    var body: some View {
        VStack {
            Image(excavationList[2].image)
                .resizable()
                .cornerRadius(20)
                .frame(width: 360, height: 200)
                .scaledToFit()
            Form {
                HStack(alignment: .center) {
                    Text("Depth")
                    TextField("Depth", value: $depth, format: .number)
                        .keyboardType(.decimalPad)
                        .multilineTextAlignment(.trailing)
                        .textFieldStyle(.roundedBorder)
                    Text("ft")
                }
                HStack(alignment: .center) {
                    Text("Top Length")
                    TextField("Top Length", value: $topLength, format: .number)
                        .keyboardType(.decimalPad)
                        .multilineTextAlignment(.trailing)
                        .textFieldStyle(.roundedBorder)
                    Text("ft")
                }
                HStack(alignment: .center) {
                    Text("Top Width")
                    TextField("Top Width", value: $topWidth, format: .number)
                        .keyboardType(.decimalPad)
                        .multilineTextAlignment(.trailing)
                        .textFieldStyle(.roundedBorder)
                    Text("ft")
                }
                HStack(alignment: .center) {
                    Text("Bottom Length")
                    TextField("Bottom Length", value: $bottomLength, format: .number)
                        .keyboardType(.decimalPad)
                        .multilineTextAlignment(.trailing)
                        .textFieldStyle(.roundedBorder)
                    Text("ft")
                }
                HStack(alignment: .center) {
                    Text("Bottom Width")
                    TextField("Bottom Width", value: $bottomWidth, format: .number)
                        .keyboardType(.decimalPad)
                        .multilineTextAlignment(.trailing)
                        .textFieldStyle(.roundedBorder)
                    Text("ft")
                }
                
                HStack(alignment: .center) {
                    Spacer()
                    Text("Slope  \((topLength-bottomLength+topWidth-bottomWidth)/2/depth, specifier: "%.2f"):1")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .frame(width:300, height: 50)
                        .background(Color.yellow)
                        .cornerRadius(10)
                    Spacer()
                }
                HStack(alignment: .center) {
                    Spacer()
                    Text("\((topLength+bottomLength)/2*(topWidth+bottomWidth)/2*depth/27, specifier: "%.1f") Bank CY")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .frame(width:300, height: 50)
                        .background(Color.yellow)
                        .cornerRadius(10)
                    Spacer()
                }
                HStack(alignment: .center) {
                    Text("Swell Factor")
                    TextField("Swell Factor", value: $swellFactor, format: .number)
                        .keyboardType(.decimalPad)
                        .multilineTextAlignment(.trailing)
                        .textFieldStyle(.roundedBorder)
                }
                .padding()
                HStack(alignment: .center) {
                    Spacer()
                    Text("\((topLength+bottomLength)/2*(topWidth+bottomWidth)/2*depth*swellFactor/27, specifier: "%.1f") Loose CY")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .frame(width:300, height: 50)
                        .background(Color.yellow)
                        .cornerRadius(10)
                    Spacer()
                }
            }
            Spacer()
        }
        .scrollDismissesKeyboard(.interactively)
        .navigationBarTitle("Pit-Sloped or Benched")
    }
}

struct Pit2View_Previews: PreviewProvider {
    static var previews: some View {
        Pit2View()
    }
}
