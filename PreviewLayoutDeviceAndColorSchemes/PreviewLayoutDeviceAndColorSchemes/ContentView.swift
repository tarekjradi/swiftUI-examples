//
//  ContentView.swift
//  PreviewLayoutDeviceAndColorSchemes
//
//  Created by Tarek Abdala on 16/03/2020.
//  Copyright © 2020 Tarek Abdala. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach([ColorScheme.dark, .light], id: \.self) { scheme in
            ContentView().edgesIgnoringSafeArea(.all)
            .previewDevice("iPhone X")
                .colorScheme(ColorScheme.dark)
        }
    }
}
