//
//  TopQuestionListViewModelMock.swift
//  Oracle Code ChallengeTests
//
//  Created by Joel Andre Hernández Infante on 27/01/22.
//

import Foundation

// MARK: - Top Question List View Model Mock
final class TopQuestionListViewModelMock: TopQuestionListViewModelProtocol {
    var questions: [QuestionFixed]?
    
    /// Emulation of the service call and parsing by mocks in order to make unit tests
    func fetchQuestions() {
        questions = [
            QuestionFixed(title: "What is the &quot;some&quot; keyword in Swift(UI)?", tags: "swift, swiftui, swift5", date: "Asked on Sep. 16 2019", scoreCount: "344", viewCount: "52341", answerCount: "13", owner: OwnerFixed(reputation: "4133", authorName: "Half", imageUrl: "https://www.gravatar.com/avatar/da183c76c0a1f20d6414b809edd9e455?s=256&d=identicon&r=PG&f=1")),
            QuestionFixed(title: "SwiftUI - How do I change the background color of a View?", tags: "view, swiftui", date: "Asked on Jun. 01 2018", scoreCount: "234", viewCount: "5234", answerCount: "1", owner: OwnerFixed(reputation: "6375", authorName: "jeremyabannister", imageUrl: "https://www.gravatar.com/avatar/da183c76c0a1f20d6414b809edd9e455?s=256&d=identicon&r=PG&f=1")),
            QuestionFixed(title: "Make a VStack fill the width of the screen in SwiftUI", tags: "swift, swiftui, swift5", date: "Asked on Sep. 16 2019", scoreCount: "344", viewCount: "52341", answerCount: "13", owner: OwnerFixed(reputation: "4133", authorName: "Half", imageUrl: "https://www.gravatar.com/avatar/da183c76c0a1f20d6414b809edd9e455?s=256&d=identicon&r=PG&f=1"))
        ]
    }
    
    /// Returns a single string by joining every single element of the array
    ///
    /// - Parameters:
    ///     - array: The array that will be processed as a single string.
    func arrayToString(array: [String]) -> String {
        return array.joined(separator: ", ")
    }
    
    /// Returns the convertion of an int to a date
    ///
    /// - Parameters:
    ///     - number: The number to cast in a date.
    func intToDate(number: Int) -> String {
        let timeInterval = Double(number)
        let myNSDate = Date(timeIntervalSince1970: timeInterval)
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM dd, yyyy"
        return dateFormatter.string(from: myNSDate).capitalized
    }
}
