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

let Mac = "Mac"

let Iphone: [String] = [
    "iPhone 7",
    "iPhone 7 Plus",
    "iPhone 8",
    "iPhone 8 Plus",
    "iPhone SE",
    "iPhone X",
    "iPhone Xs",
    "iPhone Xs Max",
    "iPhone Xʀ",
]

let iPad: [String] = [
    "iPad mini 4",
    "iPad Air 2",
    "iPad Pro (9.7-inch)",
    "iPad Pro (12.9-inch)",
    "iPad (5th generation)",
    "iPad Pro (12.9-inch) (2nd generation)",
    "iPad Pro (10.5-inch)",
    "iPad (6th generation)",
    "iPad Pro (11-inch)",
    "iPad Pro (12.9-inch) (3rd generation)",
    "iPad mini (5th generation)",
    "iPad Air (3rd generation)",
]

let AppleTv: [String] = [
    "Apple TV",
    "Apple TV 4K",
    "Apple TV 4K (at 1080p)",
]

let AppleWatch: [String] = [
    "Apple Watch Series 2 - 38mm",
    "Apple Watch Series 2 - 42mm",
    "Apple Watch Series 3 - 38mm",
    "Apple Watch Series 3 - 42mm",
    "Apple Watch Series 4 - 40mm",
    "Apple Watch Series 4 - 44mm"
]
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ForEach(iPad, id: \.self) { device in
            ContentView().edgesIgnoringSafeArea(.all)
                .previewDevice(PreviewDevice(rawValue: device))
                .colorScheme(ColorScheme.dark)
        }
        
    }
}
