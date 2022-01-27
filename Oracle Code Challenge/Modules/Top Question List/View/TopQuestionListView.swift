//
//  ContentView.swift
//  Oracle Code Challenge
//
//  Created by Joel Andre Hernández Infante on 26/01/22.
//

import SwiftUI

// MARK: - Top Question List View

/** This view once its showed it calls the view model to fetch all the data related
 to questions from stack overflow, when the data is updated the view will be refreshed
 and its going to display every information  in a list of custom cells, when its tapped one
 cell it will push the next view for the general description.
 */
struct TopQuestionListView: View {
    @StateObject private var viewModel = TopQuestionListViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.questions ?? []) { question in
                Section {
                    NavigationLink(destination: QuestionDetailView(question: question)) {
                        QuestionCellView(title: question.title, tags: question.tags, date: question.date, scoreCount: question.scoreCount, responsesCount: question.answerCount, viewsCount: question.viewCount)
                    }
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
