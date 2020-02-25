//
//  CalculatorView.swift
//  SwiftUI-Calculator
//
//  Created by Tarek Abdala on 25/02/2020.
//  Copyright © 2020 Tarek Jradi. All rights reserved.
//

import SwiftUI

struct CalculatorButton {
    let id = UUID()
    let title: String
    var color = Color(red: 0.2, green: 0.2, blue: 0.2)
}

struct CalculatorView: View {
    
    let buttons: [CalculatorButton] = [
        .init(title: "1"),
        .init(title: "2"),
        .init(title: "3"),
        .init(title: "+", color: Color.orange)
    ]
    
    var body: some View {
        VStack {
            Spacer()
            GeometryReader { geometry in
                HStack {
                    Spacer()
                    ForEach(self.buttons, id: \.id) { button in
                        Text(button.title)
                            .font(.system(size: 24))
                            .foregroundColor(.white)
                            .frame(width: (geometry.size.width/5), height: (geometry.size.width/5))
                            .background(button.color)
                            .cornerRadius(40)
                    }
                    Spacer()
                }.background(Color.black)
            }
            Spacer()
        }.background(Color.black)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
    }
}
