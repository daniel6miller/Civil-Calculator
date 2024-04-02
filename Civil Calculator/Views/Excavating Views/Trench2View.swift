//
//  Trench2View.swift
//  Civil Calculator
//
//  Created by Daniel Miller on 9/17/23.
//

import SwiftUI

struct Trench2View: View {
    
    @AppStorage("length5") private var length = 0.00
    @AppStorage("topWidth5") private var topWidth = 0.00
    @AppStorage("bottomWidth5") private var bottomWidth = 0.00
    @AppStorage("depth5") private var depth = 1.00
    @AppStorage("swellFactor5") private var swellFactor = 1.00
    
    var body: some View {
        VStack {
            Image(excavationList[4].image)
                .resizable()
                .cornerRadius(20)
                .frame(width: 360, height: 200)
                .scaledToFit()
            Form {
                HStack(alignment: .center) {
                    Text("Length")
                    TextField("Length", value: $length, format: .number)
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
                    Text("Bottom Width")
                    TextField("Bottom Width", value: $bottomWidth, format: .number)
                        .keyboardType(.decimalPad)
                        .multilineTextAlignment(.trailing)
                        .textFieldStyle(.roundedBorder)
                    Text("ft")
                }
                HStack(alignment: .center) {
                    Text("Depth")
                    TextField("Depth", value: $depth, format: .number)
                        .keyboardType(.decimalPad)
                        .multilineTextAlignment(.trailing)
                        .textFieldStyle(.roundedBorder)
                    Text("ft")
                }
                HStack(alignment: .center) {
                    Spacer()
                    Text("Slope  \((topWidth-bottomWidth)/2/depth, specifier: "%.2f"):1")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .frame(width:300, height: 50)
                        .background(Color.yellow)
                        .cornerRadius(10)
                    Spacer()
                }
                HStack(alignment: .center) {
                    Spacer()
                    Text("\(length*(topWidth+bottomWidth)/2*depth/27, specifier: "%.1f") Bank CY")
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
                    Text("\(length*(topWidth+bottomWidth)/2*depth*swellFactor/27, specifier: "%.1f") Loose CY")
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
        .navigationBarTitle("Trench - Sloped or Benched")
    }
}

struct Trench2View_Previews: PreviewProvider {
    static var previews: some View {
        Trench2View()
    }
}
