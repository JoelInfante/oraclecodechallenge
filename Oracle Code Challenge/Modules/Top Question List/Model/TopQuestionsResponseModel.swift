//
//  TopQuestionsModel.swift
//  Oracle Code Challenge
//
//  Created by Joel Andre Hernández Infante on 26/01/22.
//

import Foundation
// MARK: - Top Questions Response Model

/// The following model is used to get and cast the exact data response that comes from the API.
struct Questions: Decodable {
    let items: [Question]
}

struct Question: Decodable {
    let title: String
    let tags: [String]
    let creation_date: Int
    let score: Int
    let view_count: Int
    let answer_count: Int
    let owner: Owner
}

struct Owner: Decodable{
    let reputation: Int
    let display_name: String
    let profile_image: String
}
