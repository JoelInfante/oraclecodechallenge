//
//  ContentView.swift
//  Oracle Code Challenge
//
//  Created by Joel Andre Hernández Infante on 26/01/22.
//

import SwiftUI

struct TopQuestionListView: View {
    var questions = QuestionList.topTen
    
    var body: some View {
        NavigationView {
            List(questions.items) { question in
                NavigationLink(destination: QuestionDetailView(question: question)) {
                    QuestionCellView(title: question.title, tags: question.tags.joined(separator: ", "), date: "Asked on Sep 15th, 2019", scoreCount: String(question.score), responsesCount: String(question.answer_count), viewsCount: String(question.view_count))
                }
            }
            .listStyle(.inset)
            .navigationTitle("Top Questions")
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TopQuestionListView()
    }
}
