//
//  ContentView.swift
//  Civil Calculator
//
//  Created by Daniel Miller on 8/18/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    Color(.white)
                        .ignoresSafeArea()
                    VStack(alignment: .center) {
                        Spacer()
                        VStack(alignment: .center, spacing: 50.0) {
                            Spacer()
                            NavigationLink(destination:PipeGradeView(), label: {
                                Text("Pipe Grade")
                                    .font(.largeTitle)
                                    .fontWeight(.semibold)
                                    .frame(width:300, height: 60)
                                    .background(Color.yellow)
                                    .cornerRadius(10)
                            })
                            NavigationLink(destination:ExcavatingView(), label: {
                                Text("Excavating")
                                    .font(.largeTitle)
                                    .fontWeight(.semibold)
                                    .frame(width:300, height: 60)
                                    .background(Color.yellow)
                                    .cornerRadius(10)
                            })
                            NavigationLink(destination:HaulDirtView(), label: {
                                Text("Haul Dirt")
                                    .font(.largeTitle)
                                    .fontWeight(.semibold)
                                    .frame(width:300, height: 60)
                                    .background(Color.yellow)
                                    .cornerRadius(10)
                            })
                            NavigationLink(destination:ProductivityView(), label: {
                                Text("Productivity")
                                    .font(.largeTitle)
                                    .fontWeight(.semibold)
                                    .frame(width:300, height: 60)
                                    .background(Color.yellow)
                                    .cornerRadius(10)
                            })


                            Spacer()
                            HStack(alignment: .bottom) {
                                Spacer()
                                VStack(spacing: 5.0) {
                                    Text("Units")
                                        .font(.title)
                                        .fontWeight(.semibold)
                                    Text("US")
                                        .font(.headline)
                                        .fontWeight(.semibold)
                                }
                                Spacer()
                                VStack(spacing: 5.0) {
                                    Text("Language")
                                        .font(.title)
                                        .fontWeight(.semibold)
                                    Text("English")
                                        .font(.headline)
                                        .fontWeight(.semibold)
                                }
                                Spacer()
                            }
                        }
                        .foregroundColor(Color.black)
                    }
                }
                .navigationBarTitle("Civil Calculator")
            }
        }
        .accentColor(Color(.label))
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
