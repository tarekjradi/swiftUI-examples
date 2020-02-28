//
//  ContentView.swift
//  SwiftUI-Animated-Bar-Charts
//
//  Created by Tarek Abdala on 27/02/2020.
//  Copyright © 2020 Tarek Jradi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var pickerSelectedItem = 0
    
    var body: some View {
        
        
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Text("Hello, World!")
                     .font(.system(size: 34))
                     .fontWeight(.heavy)
                 
                Picker(selection: $pickerSelectedItem, label: Text("")) {
                    Text("Weekday").tag(0)
                    Text("Afternoon").tag(1)
                    Text("Evening").tag(2)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal, 24)

                HStack (spacing: 16) {
                    
                    VStack {
                        ZStack (alignment: .bottom) {
                             Capsule().frame(width: 30, height:200)
                                 .foregroundColor(Color(#colorLiteral(red: 0.3038644195, green: 0.9624463916, blue: 0.6871674657, alpha: 1)))
                             Capsule().frame(width: 30, height:100)
                                 .foregroundColor(.white)

                         }
                        Text("Su").padding(.top, 8)
                    }

                    VStack {
                        ZStack (alignment: .bottom) {
                             Capsule().frame(width: 30, height:200)
                                 .foregroundColor(Color(#colorLiteral(red: 0.3038644195, green: 0.9624463916, blue: 0.6871674657, alpha: 1)))
                             Capsule().frame(width: 30, height:100)
                                 .foregroundColor(.white)

                         }
                        Text("M").padding(.top, 8)
                    }

                    VStack {
                        ZStack (alignment: .bottom) {
                             Capsule().frame(width: 30, height:200)
                                 .foregroundColor(Color(#colorLiteral(red: 0.3038644195, green: 0.9624463916, blue: 0.6871674657, alpha: 1)))
                             Capsule().frame(width: 30, height:100)
                                 .foregroundColor(.white)

                         }
                        Text("T").padding(.top, 8)
                    }

                    VStack {
                        ZStack (alignment: .bottom) {
                             Capsule().frame(width: 30, height:200)
                                 .foregroundColor(Color(#colorLiteral(red: 0.3038644195, green: 0.9624463916, blue: 0.6871674657, alpha: 1)))
                             Capsule().frame(width: 30, height:100)
                                 .foregroundColor(.white)

                         }
                        Text("W").padding(.top, 8)
                    }

                    VStack {
                        ZStack (alignment: .bottom) {
                             Capsule().frame(width: 30, height:200)
                                 .foregroundColor(Color(#colorLiteral(red: 0.3038644195, green: 0.9624463916, blue: 0.6871674657, alpha: 1)))
                             Capsule().frame(width: 30, height:100)
                                 .foregroundColor(.white)

                         }
                        Text("TH").padding(.top, 8)
                    }

                    VStack {
                        ZStack (alignment: .bottom) {
                             Capsule().frame(width: 30, height:200)
                                 .foregroundColor(Color(#colorLiteral(red: 0.3038644195, green: 0.9624463916, blue: 0.6871674657, alpha: 1)))
                             Capsule().frame(width: 30, height:100)
                                 .foregroundColor(.white)

                         }
                        Text("F").padding(.top, 8)
                    }
                    
                    VStack {
                        ZStack (alignment: .bottom) {
                             Capsule().frame(width: 30, height:200)
                                 .foregroundColor(Color(#colorLiteral(red: 0.3038644195, green: 0.9624463916, blue: 0.6871674657, alpha: 1)))
                             Capsule().frame(width: 30, height:100)
                                 .foregroundColor(.white)

                         }
                        Text("Sa").padding(.top, 8)
                    }
                }.padding(.top, 24)
            }
         }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
