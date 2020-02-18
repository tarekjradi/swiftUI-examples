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
    @State var lastName = ""

    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        //
                        Group {
                            TextField("First Name", text: $firstName).padding(12)
                        }
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                        .shadow(radius: 5)
                        //
                        Group {
                            TextField("Last Name", text: $lastName).padding(12)
                        }
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .shadow(radius: 5)
                        //
                        Text(" \(firstName) \(lastName)")
                        //
                        Button(action: {
                            
                        }) {
                            Group {
                                Text("Create User").foregroundColor(.white).padding(12)
                                }
                                .background(Color.blue)
                                .clipShape(RoundedRectangle(cornerRadius: 5))
                                .shadow(radius: 5)
                        }
                    }
                }.background(Color.gray)
                List {
                    Text("Empty Row")
                }
            }
        }.navigationBarTitle(Text("Credit Card Form"))
            .navigationBarItems(leading: HStack{
                Text("First name")
                Text(firstName)
                Text("Last name")
                Text(lastName)
            })
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
