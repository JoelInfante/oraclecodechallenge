//
//  QuestionCellView.swift
//  Oracle Code Challenge
//
//  Created by Joel Andre Hernández Infante on 26/01/22.
//

import SwiftUI

struct QuestionCellView: View {
    var title: String
    var tags: String
    var date: String
    var scoreCount: String
    var responsesCount: String
    var viewsCount: String
    var isDetailView: Bool = false
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 11) {
                Text(title)
                    .bold()
                    .lineLimit(nil)
                    .minimumScaleFactor(0.01)
                Text(tags)
                    .bold()
                    .foregroundColor(.blue)
                    .lineLimit(nil)
                Text(date)
                    .bold()
                    .foregroundColor(.gray)
                    .lineLimit(nil)
                HStack(alignment: .center, spacing: 50) {
                    CounterView(counterType: .score, count: scoreCount)
                    CounterView(counterType: .responses, count: responsesCount)
                    CounterView(counterType: .views, count: viewsCount)
                }
            }
            if !isDetailView { Image("right_arrow") }
        }
        .padding()
    }
}
