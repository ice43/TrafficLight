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
    @State var buttonLabel = "START"
    
    var body: some View {
        VStack {
            TrafficCircleView(color: .red)
                .opacity(lightRed)
                .overlay(Circle().stroke(.white, lineWidth: 4))
            TrafficCircleView(color: .yellow)
                .opacity(lightYellow)
                .overlay(Circle().stroke(.white, lineWidth: 4))
                .offset(y: 10)
            TrafficCircleView(color: .green)
                .opacity(lightGreen)
                .overlay(Circle().stroke(.white, lineWidth: 4))
                .offset(y: 20)

            Spacer()
            
            ButtonView(width: 150, height: 70, action: changeLight, label: buttonLabel)
        }
        .padding()
    }
    
    private func changeLight() {
        if buttonLabel == "START" {
            buttonLabel = "NEXT"
        }
        
        switch currentLight {
        case .red:
            lightRed = 1
            lightGreen = 0.3
            currentLight = .yellow
        case .yellow:
            lightYellow = 1
            lightRed = 0.3
            currentLight = .green
        case .green:
            lightGreen = 1
            lightYellow = 0.3
            currentLight = .red
        }
    }
}

#Preview {
    ContentView()
}

extension ContentView {
    enum CurrentLight {
        case red, yellow, green
    }
}

