//
//  NetworkManager.swift
//  Oracle Code Challenge
//
//  Created by Joel Andre Hernández Infante on 26/01/22.
//

import Foundation

class NetworkManager {
    
    func fetchQuestions(completionHandler: @escaping (Questions) -> Void) {
        let url = URL(string: "https://api.stackexchange.com/2.3/questions?pagesize=10&order=desc&sort=votes&tagged=swiftui&site=stackoverflow")!
        let task = URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
            if let error = error {
                print("Error with fetching data: \(error)")
                return
            }
            guard let httpResponse = response as? HTTPURLResponse,
                  (200...299).contains(httpResponse.statusCode) else {
                      print("Error with the response, unexpected status code: \(String(describing: response))")
                      return
                  }
            if let data = data,
               let questions = try? JSONDecoder().decode(Questions.self, from: data) {
                completionHandler(questions)
            }
        })
        task.resume()
    }
}
