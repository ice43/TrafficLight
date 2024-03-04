//
//  ContentView.swift
//  TrafficLight
//
//  Created by Serge Broski on 2/29/24.
//

import SwiftUI

struct ContentView: View {
    @State private var buttonLabel = "START"
    
    @State private var lightRed = 0.3
    @State private var lightYellow = 0.3
    @State private var lightGreen = 0.3
    
    @State private var currentLight = CurrentLight.red
    
    var body: some View {
        VStack(spacing: 20) {
            TrafficCircleView(color: .red, opacity: lightRed)
            TrafficCircleView(color: .yellow, opacity: lightYellow)
            TrafficCircleView(color: .green, opacity: lightGreen)

            Spacer()
            
            ButtonView(label: buttonLabel) {
                if buttonLabel == "START" {
                    buttonLabel = "NEXT"
                }
                changeLight()
            }
            
        }
        .padding()
    }
    
    private func changeLight() {
        let isOn = 1.0
        let isOff = 0.3
        
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

private extension ContentView {
    enum CurrentLight {
        case red, yellow, green
    }
}

#Preview {
    ContentView()
}


