//
//  ButtonView.swift
//  TrafficLight
//
//  Created by Serge Broski on 3/1/24.
//

import SwiftUI

struct ButtonView: View {
    let label: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(label)
                .foregroundStyle(.white)
                .frame(width: 150, height: 70)
                .font(.title)
                .fontWeight(.bold)
        }
        .background {
            Capsule()
                .foregroundStyle(.tint)
        }
        .overlay(Capsule().stroke(.white, lineWidth: 4))
    }
}

#Preview {
    ButtonView(label: "START", action: {})
}
