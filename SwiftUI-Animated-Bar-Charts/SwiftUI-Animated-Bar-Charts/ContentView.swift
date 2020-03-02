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
    @State var dataPoints: [[CGFloat]] = [
        [50, 100, 150],
        [150, 50, 100],
        [50, 70, 30]
    ]
    
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
                    BarView(value: dataPoints[pickerSelectedItem][0])
                    BarView(value: dataPoints[pickerSelectedItem][1])
                    BarView(value: dataPoints[pickerSelectedItem][2])
                }
                .padding(.top, 24)
                .animation(.default)
            }
         }
    }
}

/// Presents a BarView.
///
///     The BarView use a capsule function, that is
///     equivalent to a rounded rectangle where the corner radius is chosen in UIView.
///
/// - Parameters:
///     - value: The `Binding` value of the BarView
///
struct BarView: View {

    var value: CGFloat = 0
    
    var body: some View {
        VStack {
            ZStack (alignment: .bottom) {
                 Capsule().frame(width: 30, height:200)
                     .foregroundColor(Color(#colorLiteral(red: 0.3038644195, green: 0.9624463916, blue: 0.6871674657, alpha: 1)))
                 Capsule().frame(width: 30, height:value)
                     .foregroundColor(.white)
             }
            Text("Sa").padding(.top, 8)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
