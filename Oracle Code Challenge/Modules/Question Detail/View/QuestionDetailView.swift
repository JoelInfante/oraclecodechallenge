//
//  QuestionDetailView.swift
//  Oracle Code Challenge
//
//  Created by Joel Andre Hernández Infante on 26/01/22.
//

import SwiftUI

struct QuestionDetailView: View {
    var question: Question
    
    var body: some View {
        VStack {
            QuestionCellView(title: question.title, tags: question.tags.joined(separator: ", "), date: "Asked on Sep 15th, 2019", scoreCount: String(question.score), responsesCount: String(question.answer_count), viewsCount: String(question.view_count), isDetailView: true)
            QuestionDetailBodyView(detail: "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur", author: question.owner.display_name, reputation: String(question.owner.reputation))
            Spacer()
        }
        .navigationTitle("Question")
    }
}

struct QuestionDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionDetailView(question: Question(title: "What is the &quot;some&quot; keyword in Swift(UI)?", tags: ["swift", "swiftui", "swift5"], creation_date: 1559591221, score: 344, view_count: 52341, answer_count: 13, owner: Owner(reputation: 4133, display_name: "Half")))
    }
}
