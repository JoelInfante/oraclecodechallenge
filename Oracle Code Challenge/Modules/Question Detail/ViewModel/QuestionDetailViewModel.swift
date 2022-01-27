//
//  QuestionDetailViewModel.swift
//  Oracle Code Challenge
//
//  Created by Joel Andre Hernández Infante on 26/01/22.
//

import UIKit
import Foundation

// MARK: - Question Detail View Model
final class QuestionDetailViewModel: ObservableObject, QuestionDetailViewModelProtocol {
    @Published var image: UIImage?
    
    /// Call the NetworkManager to get the profile image of the author data
    /// once when all data is formated execute the changes on the published variable to refresh the view
    func fetchImage(url: String) {
        NetworkManager().loadImage(for: url) { [weak self] (image) in
            DispatchQueue.main.async {
                self?.image = image
            }
        }
    }
}
