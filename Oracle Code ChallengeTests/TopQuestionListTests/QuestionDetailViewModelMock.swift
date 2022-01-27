//
//  QuestionDetailViewModelMock.swift
//  Oracle Code ChallengeTests
//
//  Created by Joel Andre Hernández Infante on 27/01/22.
//

import UIKit
import Foundation

// MARK: - Question Detail View Model Mock
final class QuestionDetailViewModelMock: QuestionDetailViewModelProtocol {
    
    var image: UIImage?
    
    /// Emulation of the service call to fetch profile image and parsing by mocks in order to make unit tests
    func fetchImage(url: String) {
        image = UIImage()
    }
}
