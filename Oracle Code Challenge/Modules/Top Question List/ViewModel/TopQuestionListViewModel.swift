//
//  TopQuestionListViewModel.swift
//  Oracle Code Challenge
//
//  Created by Joel Andre Hernández Infante on 26/01/22.
//

import Foundation

final class TopQuestionListViewModel: ObservableObject {
    @Published var questions: [QuestionFixed]?
    
    func fetchQuestions() {
        NetworkManager().fetchQuestions { [weak self] (questions) in
            DispatchQueue.main.async {
                self?.questions = questions.items.map({ question in
                    return QuestionFixed(title: question.title, tags: self?.arrayToString(array: question.tags) ?? "", date: "Asked on \(self?.intToDate(number: question.creation_date) ?? "")", scoreCount: String(question.score), viewCount: String(question.view_count), answerCount: String(question.answer_count), owner: OwnerFixed(reputation: String(question.owner.reputation), authorName: String(question.owner.display_name)))
                })
            }
        }
    }
    
    func arrayToString(array: [String]) -> String {
        return array.joined(separator: ", ")
    }
    
    func intToDate(number: Int) -> String {
        let timeInterval = Double(number)
        let myNSDate = Date(timeIntervalSince1970: timeInterval)
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM dd, yyyy"
        return dateFormatter.string(from: myNSDate).capitalized
    }
}
