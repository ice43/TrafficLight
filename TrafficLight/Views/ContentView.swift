//
//  ContentView.swift
//  TrafficLight
//
//  Created by Serge Broski on 2/29/24.
//

import SwiftUI

enum CurrentLight {
    case off, red, yellow, green
}

struct ContentView: View {
    @State private var buttonLabel = "START"
    @State private var currentLight = CurrentLight.off
    
    var body: some View {
        VStack(spacing: 20) {
            TrafficCircleView(
                color: .red,
                opacity: currentLight == .red ? 1 : 0.3
            )
            TrafficCircleView(
                color: .yellow,
                opacity: currentLight == .yellow ? 1 : 0.3
            )
            TrafficCircleView(
                color: .green,
                opacity: currentLight == .green ? 1 : 0.3
            )

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
        switch currentLight {
        case .off:
            currentLight = .red
        case .red:
            currentLight = .yellow
        case .yellow:
            currentLight = .green
        case .green:
            currentLight = .red
        }
    }
}

#Preview {
    ContentView()
}


