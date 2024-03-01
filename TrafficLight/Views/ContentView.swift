//
//  ContentView.swift
//  TrafficLight
//
//  Created by Serge Broski on 2/29/24.
//

import SwiftUI

struct ContentView: View {
    @State private var currentLight = CurrentLight.red
    @State private var lightRed = 0.3
    @State private var lightYellow = 0.3
    @State private var lightGreen = 0.3
    @State private var buttonLabel = "START"
    private let isOn = 1.0
    private let isOff = 0.3
    
    var body: some View {
        VStack(spacing: 20) {
            TrafficCircleView(color: .red, opacity: lightRed)
            TrafficCircleView(color: .yellow, opacity: lightYellow)
            TrafficCircleView(color: .green, opacity: lightGreen)

            Spacer()
            
            ButtonView(
                width: 150,
                height: 70,
                action: changeLight,
                label: buttonLabel
            )
        }
        .padding()
    }
    
    private func changeLight() {
        if buttonLabel == "START" {
            buttonLabel = "NEXT"
        }
        
        switch currentLight {
        case .red:
            lightRed = isOn
            lightGreen = isOff
            currentLight = .yellow
        case .yellow:
            lightYellow = isOn
            lightRed = isOff
            currentLight = .green
        case .green:
            lightGreen = isOn
            lightYellow = isOff
            currentLight = .red
        }
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


