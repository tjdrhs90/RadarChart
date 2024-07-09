//
//  ContentView.swift
//  RadarChart
//
//  Created by ssg on 7/9/24.
//

import SwiftUI

struct ContentView: View {
    @State private var firstValue: Double = 3
    @State private var secondValue: Double = 2
    @State private var thirdValue: Double = 2
    @State private var fourthValue: Double = 3
    @State private var fifthValue: Double = 2
    
    let labels: [String] =
    ["First", "Second", "Third", "Fourth", "Fifth"]
    let maxValues: [Double] = [3, 3, 3, 3, 3]
    let shapeColor: Color = .blue
    
    var data: [Double] {
        [firstValue, secondValue, thirdValue, fourthValue, fifthValue]
    }
    
    var body: some View {
        RadarChart(data: data, labels: labels, maxValues: maxValues, shapeColor: shapeColor)
            .frame(height: 250)
    }
}

#Preview {
    ContentView()
}
