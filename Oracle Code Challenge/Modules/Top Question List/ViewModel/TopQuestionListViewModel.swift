//
//  TopQuestionListViewModel.swift
//  Oracle Code Challenge
//
//  Created by Joel Andre Hernández Infante on 26/01/22.
//

import UIKit
import Foundation

// MARK: - Top Question List View Model
final class TopQuestionListViewModel: ObservableObject {
    @Published var questions: [QuestionFixed]?
    
    /// Call the NetworkManager to get the questions data also when the data is already fetched
    /// it process every single information in order to give it the corresponding format
    /// once when all data is formated execute the changes on the published variable to refresh the view
    func fetchQuestions() {
        NetworkManager().fetchQuestions { [weak self] (questions) in
            DispatchQueue.main.async {
                self?.questions = questions.items.map({ question in
                    return QuestionFixed(title: question.title, tags: self?.arrayToString(array: question.tags) ?? "", date: "Asked on \(self?.intToDate(number: question.creation_date) ?? "")", scoreCount: String(question.score), viewCount: String(question.view_count), answerCount: String(question.answer_count), owner: OwnerFixed(reputation: String(question.owner.reputation), authorName: String(question.owner.display_name), imageUrl: question.owner.profile_image))
                })
            }
        }
    }
    
    /// Returns a single string by joining every single element of the array
    ///
    /// - Parameters:
    ///     - array: The array that will be processed as a single string.
    private func arrayToString(array: [String]) -> String {
        return array.joined(separator: ", ")
    }
    
    /// Returns the convertion of an int to a date
    ///
    /// - Parameters:
    ///     - number: The number to cast in a date.
    private func intToDate(number: Int) -> String {
        let timeInterval = Double(number)
        let myNSDate = Date(timeIntervalSince1970: timeInterval)
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM dd, yyyy"
        return dateFormatter.string(from: myNSDate).capitalized
    }
}
