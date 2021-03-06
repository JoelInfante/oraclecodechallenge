//
//  Counter.swift
//  Oracle Code Challenge
//
//  Created by Joel Andre Hernández Infante on 26/01/22.
//

import SwiftUI

// MARK: - Counter View

/// A view to show every simgle match between icons and counters (e.g., scores, views, responses)
struct CounterView: View {
    var counterType: CounterType
    var count: String
    
    var body: some View {
        HStack {
            Image(counterType.rawValue)
                .resizable()
                .frame(width: 20, height: 20, alignment: .center)
            Text(count)
                .scaledToFill()
                .minimumScaleFactor(0.5)
                .foregroundColor(Color("Cream Blue"))
        }
    }
}
