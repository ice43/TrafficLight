//
//  TrafficCircleView.swift
//  TrafficLight
//
//  Created by Serge Broski on 3/1/24.
//

import SwiftUI

struct TrafficCircleView: View {
    let color: Color
    var body: some View {
        Circle()
            .foregroundStyle(color)
            .frame(width: 100, height: 100)
    }
}

#Preview {
    TrafficCircleView(color: .red)
}
