//
//  TopQuestionsFixedModel.swift
//  Oracle Code Challenge
//
//  Created by Joel Andre Hernández Infante on 26/01/22.
//

import Foundation

// MARK: - Top Questions Fixed Model

/// The following model is used manage, process and adjust the data in order to display it more easily on the UI.
struct QuestionFixed: Identifiable {
    let id = UUID()
    let title: String
    let tags: String
    let date: String
    let scoreCount: String
    let viewCount: String
    let answerCount: String
    let owner: OwnerFixed
}

struct OwnerFixed{
    let reputation: String
    let authorName: String
    let imageUrl: String
}
