//
//  Trench3View.swift
//  Civil Calculator
//
//  Created by Daniel Miller on 9/17/23.
//

import SwiftUI

struct Trench3View: View {
    
    @AppStorage("length6") private var length = 0.00
    @AppStorage("width6") private var width = 0.00
    @AppStorage("depth6") private var depth1 = 1.00
    @AppStorage("topWidth6") private var topWidth = 0.00
    @AppStorage("bottomWidth6") private var bottomWidth = 0.00
    @AppStorage("depth7") private var depth2 = 1.00
    @AppStorage("swellFactor6") private var swellFactor = 1.00
    
    var body: some View {
        Form{
            Image(excavationList[5].image)
                .resizable()
                .cornerRadius(20)
                .frame(width: 360, height: 200)
                .scaledToFit()
            VStack {
                HStack(alignment: .center) {
                    Text("Length")
                    TextField("Length", value: $length, format: .number)
                        .keyboardType(.decimalPad)
                        .multilineTextAlignment(.trailing)
                        .textFieldStyle(.roundedBorder)
                    Text("ft")
                }
                HStack(alignment: .center) {
                    Spacer()
                    Text("Trench")
                        .fontWeight(.bold)
                    Spacer()
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
                    TextField("Depth", value: $depth1, format: .number)
                        .keyboardType(.decimalPad)
                        .multilineTextAlignment(.trailing)
                        .textFieldStyle(.roundedBorder)
                    Text("ft")
                }
            }.padding([.leading, .trailing], 20)
            VStack {
                HStack(alignment: .center) {
                    Spacer()
                    Text("Slope or Steps")
                        .fontWeight(.bold)
                    Spacer()
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
                    TextField("Depth", value: $depth2, format: .number)
                        .keyboardType(.decimalPad)
                        .multilineTextAlignment(.trailing)
                        .textFieldStyle(.roundedBorder)
                    Text("ft")
                }
                
                HStack(alignment: .center) {
                    Spacer()
                    Text("Slope  \((topWidth-bottomWidth)/2/depth2, specifier: "%.2f"):1")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .frame(width:300, height: 50)
                        .background(Color.yellow)
                        .cornerRadius(10)
                    Spacer()
                }
                HStack(alignment: .center) {
                    Spacer()
                    Text("\((width*depth1+(topWidth+bottomWidth)/2*depth2)*length/27, specifier: "%.1f") Bank CY")
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
                    Text("\((width*depth1+(topWidth+bottomWidth)/2*depth2)*length*swellFactor/27, specifier: "%.1f") Loose CY")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .frame(width:300, height: 50)
                        .background(Color.yellow)
                        .cornerRadius(10)
                    Spacer()
                }
                Spacer()
            }.padding([.leading, .trailing], 20)
        }
        .scrollDismissesKeyboard(.interactively)
        .navigationBarTitle("Trench to Sloped or Benched")
    }
}
struct Trench3View_Previews: PreviewProvider {
    static var previews: some View {
        Trench3View()
    }
}
