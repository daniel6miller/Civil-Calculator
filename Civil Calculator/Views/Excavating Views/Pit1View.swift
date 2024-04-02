//
//  Pit1View.swift
//  Civil Calculator
//
//  Created by Daniel Miller on 9/17/23.
//

import SwiftUI

struct Pit1View: View {
    
    @AppStorage("length2") private var length = 0.00
    @AppStorage("width2") private var width = 0.00
    @AppStorage("depth2") private var depth = 0.00
    @AppStorage("swellFactor2") private var swellFactor = 1.00
    
    var body: some View {
        VStack {
            Image(excavationList[1].image)
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
                    Text("Width")
                    TextField("Width", value: $width, format: .number)
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
                    Text("\(length*width*depth/27, specifier: "%.1f") Bank CY")
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
                    Text("\(length*width*depth*swellFactor/27, specifier: "%.1f") Loose CY")
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
        .navigationBarTitle("Pit")
    }
}

struct Pit1View_Previews: PreviewProvider {
    static var previews: some View {
        Pit1View()
    }
}
