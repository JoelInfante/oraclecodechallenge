//
//  QuestionDetailView.swift
//  Oracle Code Challenge
//
//  Created by Joel Andre Hernández Infante on 26/01/22.
//

import SwiftUI

struct QuestionDetailView: View {
    @StateObject private var viewModel = TopQuestionListViewModel()
    var question: QuestionFixed
    
    var body: some View {
        VStack {
            QuestionCellView(title: question.title, tags: question.tags, date: question.date, scoreCount: question.scoreCount, responsesCount: question.answerCount, viewsCount: question.viewCount, isDetailView: true)
            QuestionDetailBodyView(detail: "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur", author: question.owner.authorName, reputation: question.owner.reputation, image: viewModel.image ?? UIImage())
            Spacer()
        }
        .navigationTitle("Question")
        .onAppear { viewModel.fetchImage(url: question.owner.imageUrl) }
    }
}

struct QuestionDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionDetailView(question: QuestionFixed(title: "", tags: "", date: "", scoreCount: "", viewCount: "", answerCount: "", owner: OwnerFixed(reputation: "", authorName: "", imageUrl: "")))
    }
}
