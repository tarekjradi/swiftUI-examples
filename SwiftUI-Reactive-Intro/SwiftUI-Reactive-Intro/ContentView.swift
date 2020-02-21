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
    
    @State var users = [String]()
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        
                        Group {
                            TextField("First Name", text: $firstName)
                                .padding(12)
                        }
                        .background(Color.white)
                        .padding(12)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                        .shadow(radius: 5)
                        
                        Group {
                            TextField("Last Name", text: $lastName)
                                .padding(12)
                        }
                        .background(Color.white)
                        .padding(12)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .shadow(radius: 5)
                                                
                        Button(action: {
                            self.users.append("\(self.firstName) \(self.lastName)")
                            self.firstName.removeAll()
                            self.lastName.removeAll()
                        }) {
                            Text("Create User")
                                .foregroundColor(.white)
                                .padding(12)
                                .background((firstName.count + lastName.count > 0) ? Color.blue : Color.gray )
                                .clipShape(RoundedRectangle(cornerRadius: 5))
                                .shadow(radius: 5)
                            
                        }
                    }
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                }
                .background(Color.gray)
                
                List(users, id: \.self) { string in
                    Text(string)
                }
                .navigationBarTitle(Text("Credit Card Form"))
                .navigationBarItems(leading: HStack{
                    Text("First name")
                    Text(firstName).foregroundColor(.red)
                    Text("Last name")
                    Text(lastName).foregroundColor(.red)
                })
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
