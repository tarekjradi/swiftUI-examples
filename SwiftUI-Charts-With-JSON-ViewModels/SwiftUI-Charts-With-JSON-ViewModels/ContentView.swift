//
//  ContentView.swift
//  SwiftUI-Charts-With-JSON-ViewModels
//
//  Created by Tarek Abdala on 06/04/2020.
//  Copyright © 2020 Tarek Abdala. All rights reserved.
//

import SwiftUI

struct TimeSeries: Decodable {
    let unitedStates, italy, iran, unitedKingdom: [DayData]
    
    enum CodingKeys: String, CodingKey {
        case italy = "Italy"
        case unitedStates = "US"
        case iran = "Iran"
        case unitedKingdom = "United Kingdom"
    }
}

struct DayData: Decodable, Hashable, Identifiable {
    let id = UUID().uuidString
    let date: String
    let confirmed, deaths, recovered: Int
}

class ChartsViewModel: ObservableObject {
    
    var timeSeries: TimeSeries!
    
    @Published var series = [DayData]()

    init() {
        let urlString = "https://pomber.github.io/covid19/timeseries.json"
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { (data, resp, error) in
            guard let data = data else { return }
            do {
                let timeSeries = try JSONDecoder().decode(TimeSeries.self, from: data)
                print(timeSeries.unitedStates)
            } catch {
                print("JSON Decode failed:", error)
            }
            
        }.resume()
    }
}

struct ContentView: View {
    
    @ObservedObject var viewModel = ChartsViewModel()
    
    var body: some View {
        VStack {
            Text("Corona!")
                .font(.system(size: 34, weight: .bold))
            Text("Total Deaths:")
            
            HStack {
                //TODO: insert the JSON data here
                VStack {
                    Spacer()
                    }.frame(width: 10, height: 200)
                .background(Color.red)
                VStack {
                    Spacer()
                    }.frame(width: 10, height: 200)
                .background(Color.red)
                VStack {
                    Spacer()
                    }.frame(width: 10, height: 200)
                .background(Color.red)
                VStack {
                    Spacer()
                    }.frame(width: 10, height: 200)
                .background(Color.red)
                VStack {
                    Spacer()
                    }.frame(width: 10, height: 200)
                .background(Color.red)
                VStack {
                    Spacer()
                    }.frame(width: 10, height: 200)
                .background(Color.red)

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
