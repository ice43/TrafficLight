//
//  ButtonView.swift
//  TrafficLight
//
//  Created by Serge Broski on 3/1/24.
//

import SwiftUI

struct ButtonView: View {
    let width: Double
    let height: Double
    let label: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(label)
                .foregroundStyle(.white)
                .font(.title)
                .fontWeight(.bold)
        }
        .background {
            Capsule()
                .frame(width: width, height: height)
                .foregroundStyle(.tint)
        }
        
        .frame(width: width, height: height)
        .overlay(Capsule().stroke(.white, lineWidth: 4))
    }
}

#Preview {
    ButtonView(width: 150, height: 70, label: "START", action: {})
}
