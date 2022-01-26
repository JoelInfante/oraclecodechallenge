//
//  Counter.swift
//  Oracle Code Challenge
//
//  Created by Joel Andre Hernández Infante on 26/01/22.
//

import SwiftUI

struct CounterView: View {
    var counterType: CounterType
    var count: String
    
    var body: some View {
        HStack {
            Image(counterType.rawValue)
                .resizable()
                .frame(width: 20, height: 20, alignment: .center)
            Text(count)
                .foregroundColor(Color("Cream Blue"))
        }
    }
}
