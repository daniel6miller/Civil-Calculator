//
//  Trench1View.swift
//  Civil Calculator
//
//  Created by Daniel Miller on 9/17/23.
//

import SwiftUI

struct Trench1View: View {
    
    @AppStorage("length4") private var length = 0.00
    @AppStorage("width4") private var width = 0.00
    @AppStorage("depth4") private var depth = 0.00
    @AppStorage("swellFactor4") private var swellFactor = 1.00
    
    var body: some View {
        VStack {
            Image(excavationList[3].image)
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
        .navigationBarTitle("Trench")
    }
}

struct Trench1View_Previews: PreviewProvider {
    static var previews: some View {
        Trench1View()
    }
}
