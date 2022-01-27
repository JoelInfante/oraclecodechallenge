//
//  OracleCodeChallengeTests.swift
//  Oracle Code ChallengeTests
//
//  Created by Joel Andre Hernández Infante on 27/01/22.
//

import XCTest
@testable import Oracle_Code_Challenge

class OracleCodeChallengeTests: XCTestCase {
    
    var topQuestionListViewModel: TopQuestionListViewModelMock!
    var questionDetailViewModel: QuestionDetailViewModelMock!

    override func setUp() {
        super.setUp()
        topQuestionListViewModel = TopQuestionListViewModelMock()
        questionDetailViewModel = QuestionDetailViewModelMock()
    }
    
    override func tearDown() {
        topQuestionListViewModel = nil
        questionDetailViewModel = nil
        super.tearDown()
    }

    func testFetchQuestions() {
        topQuestionListViewModel.fetchQuestions()
        XCTAssertNotNil(topQuestionListViewModel.questions)
    }
    
    func testFetchQuestionsCount() {
        topQuestionListViewModel.fetchQuestions()
        XCTAssertTrue(topQuestionListViewModel.questions?.count == 3)
    }
    
    func testFetchQuestionsParameters() {
        var validation = false
        topQuestionListViewModel.fetchQuestions()
        validation = (
            topQuestionListViewModel.questions?.first?.title == "What is the &quot;some&quot; keyword in Swift(UI)?" &&
            topQuestionListViewModel.questions?.first?.tags == "swift, swiftui, swift5" &&
            topQuestionListViewModel.questions?.first?.date == "Asked on Sep. 16 2019" &&
            topQuestionListViewModel.questions?.first?.scoreCount == "344" &&
            topQuestionListViewModel.questions?.first?.viewCount == "52341" &&
            topQuestionListViewModel.questions?.first?.answerCount == "13" &&
            topQuestionListViewModel.questions?.first?.owner.authorName == "Half" &&
            topQuestionListViewModel.questions?.first?.owner.imageUrl == "https://www.gravatar.com/avatar/da183c76c0a1f20d6414b809edd9e455?s=256&d=identicon&r=PG&f=1" &&
            topQuestionListViewModel.questions?.first?.owner.reputation == "4133"
        )
        XCTAssertTrue(validation)
    }
    
    func testArrayToString() {
        let expectation = "swift, swiftui, swift5"
        let result = topQuestionListViewModel.arrayToString(array: ["swift", "swiftui", "swift5"])
        
        XCTAssertTrue(expectation == result)
    }
    
    func testIntToDate() {
        let expectation = "Jun. 03, 2019"
        let result = topQuestionListViewModel.intToDate(number: 1559591221)
        
        XCTAssertTrue(expectation == result)
    }
    
    func testFetchProfilePhoto() {
        questionDetailViewModel.fetchImage(url: "https://www.gravatar.com/avatar/da183c76c0a1f20d6414b809edd9e455?s=256&d=identicon&r=PG&f=1")
        XCTAssertNotNil(questionDetailViewModel.image)
    }
}
