//
//  ContentView.swift
//  SwiftUI-Animated-Bar-Charts
//
//  Created by Tarek Abdala on 27/02/2020.
//  Copyright © 2020 Tarek Jradi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
            Text("Hello, World!")
                .font(.system(size: 34))
                .fontWeight(.heavy)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
