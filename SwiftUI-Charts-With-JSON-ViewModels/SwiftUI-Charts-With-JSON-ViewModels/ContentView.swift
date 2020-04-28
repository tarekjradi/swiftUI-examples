//
//  ContentView.swift
//  SwiftUI-Charts-With-JSON-ViewModels
//
//  Created by Tarek Abdala on 06/04/2020.
//  Copyright © 2020 Tarek Abdala. All rights reserved.
//

import SwiftUI

struct TimeSeries: Decodable {
    let Thailand : [DayData]
    let US:  [DayData]
    let Italy: [DayData]
    let Hungary: [DayData]
}

struct DayData: Decodable, Hashable, Identifiable {
    let id = UUID().uuidString
    let date: String
    let confirmed, deaths, recovered: Int
}

class ChartsViewModel: ObservableObject {

    // MARK: properties
    var timeSeries: TimeSeries!
    var max = 0
    private let urlString = "https://raw.githubusercontent.com/tarekjradi/SwiftUI-Patterns/master/timeseries.json"

    // MARK: Published
    @Published var dataSet = [DayData]()

    init() {
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { (data, resp, error) in
            guard let data = data else { return }
            do {
                self.timeSeries = try JSONDecoder().decode(TimeSeries.self, from: data)
                DispatchQueue.main.sync {
                self.loadTimeSeries(byItem: 0)
                }
            } catch {
                print("JSON Decode failed:", error)
            }

        }.resume()
    }
    
    func loadTimeSeries(byItem: Int) {
        guard let _ = self.timeSeries else { return }
        self.dataSet = self.timeSeries.Italy.filter({ $0.deaths > 0})
        self.max = self.dataSet.max(by: { (day1, day2) -> Bool in
            return day2.deaths > day1.deaths
            })?.deaths ?? 0
        
    }
    
}

struct ContentView: View {
    
    // MARK: State properties
    @State var pickerSelectedItem = 0

    // MARK: ObservedObjects
    @ObservedObject var viewModel = ChartsViewModel()
    
    var body: some View {
        VStack {
            Text("Corona!")
                .font(.system(size: 34, weight: .bold))
            Text("Total Deaths: \(viewModel.max)")
            if !viewModel.dataSet.isEmpty {
                ScrollView(.horizontal) {
                    HStack (alignment: .bottom, spacing: 4) {
                        ForEach(viewModel.dataSet, id: \.self) { day in
                            HStack {
                                Spacer()
                            }.frame(width: 2, height: (CGFloat(day.deaths) / CGFloat(self.viewModel.max)) * 200)
                            .background(Color.red)
                        }
                    }
                }
            }
            Picker(selection: $pickerSelectedItem, label: Text("")) {
                Text("Thailand").tag(0)
                Text("US").tag(1)
                Text("Italy").tag(2)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal, 24)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
