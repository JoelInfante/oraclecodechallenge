//
//  QuestionDetailBody.swift
//  Oracle Code Challenge
//
//  Created by Joel Andre Hernández Infante on 26/01/22.
//

import SwiftUI
// MARK: - Question Detail Body View

/// A view that contains the general author description of a specific question, it shows the name, reputation and profile image of them
struct QuestionDetailBodyView: View {
    var detail: String
    var author: String
    var reputation: String
    var image: UIImage
    
    var body: some View {
        Text(detail)
            .padding()
        HStack {
            Image(uiImage: image)
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
            VStack(alignment: .leading, spacing: 5) {
                Text(author)
                    .bold()
                Text(reputation)
                    .foregroundColor(.gray)
            }
        }
    }
}
