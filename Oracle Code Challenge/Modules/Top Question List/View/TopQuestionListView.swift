//
//  ContentView.swift
//  Oracle Code Challenge
//
//  Created by Joel Andre Hernández Infante on 26/01/22.
//

import SwiftUI

struct TopQuestionListView: View {
    var body: some View {
        NavigationView {
            List(1..<20) { item in
                QuestionCellView(title: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua", tags: "lorem,ipsum,dolor,sit,amet", date: "Asked on Sep 15th, 2019", scoreCount: "162", responsesCount: "22", viewsCount: "141k")
            }
            .listStyle(.inset)
            .navigationTitle("Top Questions")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TopQuestionListView()
    }
}
