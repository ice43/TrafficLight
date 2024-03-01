//
//  ButtonView.swift
//  TrafficLight
//
//  Created by Serge Broski on 3/1/24.
//

import SwiftUI

struct ButtonView: View {
    let width: CGFloat
    let height: CGFloat
    var body: some View {
        Button(action: changeLight) {
            Text("START")
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
    
    private func changeLight() {}
}

#Preview {
    ButtonView(width: 150, height: 70)
}
