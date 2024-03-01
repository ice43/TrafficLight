//
//  ContentView.swift
//  TrafficLight
//
//  Created by Serge Broski on 2/29/24.
//

import SwiftUI

struct ContentView: View {
    private var currentLight = CurrentLight.red
    private let lightIsOn = 1.0
    private let lightIsOff = 0.3
    
    var body: some View {
        VStack {
            TrafficCircleView(color: .red)
            TrafficCircleView(color: .yellow)
                .offset(y: 10)
            TrafficCircleView(color: .green)
                .offset(y: 20)

            Spacer()
            
            ButtonView(width: 150, height: 70)
        }
        .padding()
    }
}

extension ContentView {
    enum CurrentLight {
        case red, yellow, green
    }
}

#Preview {
    ContentView()
}
