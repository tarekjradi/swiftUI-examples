//
//  ContentView.swift
//  SwiftUI-Reactive-Intro
//
//  Created by Tarek Abdala on 14/02/2020.
//  Copyright © 2020 Tarek Jradi. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    
    @State var firstName = ""

    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        Group {
                            TextField("First Name", text: $firstName).padding(12)
                        }.background(Color.white)
                        TextField("First Name", text: $firstName)
                        Button(action: {
                            
                        }) {
                            Text("Create User")
                        }.background(Color.gray)
                    }
                }
                List {
                    Text("Empty Row")
                }
            }
        }.navigationBarTitle(Text("Credit Card Form"))
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
