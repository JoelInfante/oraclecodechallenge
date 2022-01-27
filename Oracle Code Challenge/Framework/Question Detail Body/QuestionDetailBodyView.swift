//
//  QuestionDetailBody.swift
//  Oracle Code Challenge
//
//  Created by Joel Andre Hernández Infante on 26/01/22.
//

import SwiftUI

struct QuestionDetailBodyView: View {
    var detail: String
    var author: String
    var reputation: String
    
    var body: some View {
        Text(detail)
            .padding()
        HStack {
            Image("profile_image")
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
