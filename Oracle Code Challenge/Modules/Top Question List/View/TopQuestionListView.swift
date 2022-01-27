//
//  ContentView.swift
//  Oracle Code Challenge
//
//  Created by Joel Andre Hernández Infante on 26/01/22.
//

import SwiftUI

struct TopQuestionListView: View {
    @StateObject private var viewModel = TopQuestionListViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.questions ?? []) { question in
                NavigationLink(destination: QuestionDetailView(question: question)) {
                    QuestionCellView(title: question.title, tags: question.tags, date: question.date, scoreCount: question.scoreCount, responsesCount: question.answerCount, viewsCount: question.viewCount)
                }
            }
            .listStyle(.inset)
            .navigationTitle("Top Questions")
        }
        .navigationBarBackButtonHidden(true)
        .onAppear { viewModel.fetchQuestions() }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TopQuestionListView()
    }
}
