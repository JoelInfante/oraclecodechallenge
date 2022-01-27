//
//  TopQuestionsModel.swift
//  Oracle Code Challenge
//
//  Created by Joel Andre Hernández Infante on 26/01/22.
//

import Foundation
struct Questions {
    let items: [Question]
}

struct Question: Identifiable {
    let id = UUID()
    let title: String
    let tags: [String]
    let creation_date: Int
    let score: Int
    let view_count: Int
    let answer_count: Int
}

struct QuestionList {
    static let topTen = Questions(items: [
        Question(title: "What is the &quot;some&quot; keyword in Swift(UI)?", tags: ["swift", "swiftui", "swift5"], creation_date: 1559591221, score: 344, view_count: 52341, answer_count: 13),
        Question(title: "SwiftUI - How do I change the background color of a View?", tags: ["view", "background", "background-color", "modifier", "swiftui"], creation_date: 1559619534, score: 190, view_count: 184954, answer_count: 14),
        Question(title: "What is the &quot;some&quot; keyword in Swift(UI)?", tags: ["swift", "swiftui", "swift5"], creation_date: 1559591221, score: 344, view_count: 52341, answer_count: 13),
        Question(title: "SwiftUI - How do I change the background color of a View?", tags: ["view", "background", "background-color", "modifier", "swiftui"], creation_date: 1559619534, score: 190, view_count: 184954, answer_count: 14),
        Question(title: "What is the &quot;some&quot; keyword in Swift(UI)?", tags: ["swift", "swiftui", "swift5"], creation_date: 1559591221, score: 344, view_count: 52341, answer_count: 13),
        Question(title: "SwiftUI - How do I change the background color of a View?", tags: ["view", "background", "background-color", "modifier", "swiftui"], creation_date: 1559619534, score: 190, view_count: 184954, answer_count: 14),
        Question(title: "What is the &quot;some&quot; keyword in Swift(UI)?", tags: ["swift", "swiftui", "swift5"], creation_date: 1559591221, score: 344, view_count: 52341, answer_count: 13),
        Question(title: "SwiftUI - How do I change the background color of a View?", tags: ["view", "background", "background-color", "modifier", "swiftui"], creation_date: 1559619534, score: 190, view_count: 184954, answer_count: 14),
        Question(title: "What is the &quot;some&quot; keyword in Swift(UI)?", tags: ["swift", "swiftui", "swift5"], creation_date: 1559591221, score: 344, view_count: 52341, answer_count: 13),
        Question(title: "SwiftUI - How do I change the background color of a View?", tags: ["view", "background", "background-color", "modifier", "swiftui"], creation_date: 1559619534, score: 190, view_count: 184954, answer_count: 14)
    ])
}
