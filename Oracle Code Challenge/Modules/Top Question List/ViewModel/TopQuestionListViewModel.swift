//
//  TopQuestionListViewModel.swift
//  Oracle Code Challenge
//
//  Created by Joel Andre Hernández Infante on 26/01/22.
//

import UIKit
import Foundation

final class TopQuestionListViewModel: ObservableObject {
    @Published var questions: [QuestionFixed]?
    @Published var image: UIImage?
    
    func fetchQuestions() {
        NetworkManager().fetchQuestions { [weak self] (questions) in
            DispatchQueue.main.async {
                self?.questions = questions.items.map({ question in
                    return QuestionFixed(title: question.title, tags: self?.arrayToString(array: question.tags) ?? "", date: "Asked on \(self?.intToDate(number: question.creation_date) ?? "")", scoreCount: String(question.score), viewCount: String(question.view_count), answerCount: String(question.answer_count), owner: OwnerFixed(reputation: String(question.owner.reputation), authorName: String(question.owner.display_name), imageUrl: question.owner.profile_image))
                })
            }
        }
    }
    
    func fetchImage(url: String) {
        NetworkManager().loadImage(for: url) { [weak self] (image) in
            DispatchQueue.main.async {
                self?.image = image
            }
        }
    }
    
    private func arrayToString(array: [String]) -> String {
        return array.joined(separator: ", ")
    }
    
    private func intToDate(number: Int) -> String {
        let timeInterval = Double(number)
        let myNSDate = Date(timeIntervalSince1970: timeInterval)
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM dd, yyyy"
        return dateFormatter.string(from: myNSDate).capitalized
    }
}
