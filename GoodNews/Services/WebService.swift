//
//  WebService.swift
//  GoodNews
//
//  Created by Mariana Steblii on 22/12/2021.
//

import UIKit

class WebServise {
    // MARK: - Public functions
    func getArticles(url: URL, completion: @escaping ([Article]?) -> ()) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error)
                completion(nil)
            } else if let data = data {
                let articleList = try? JSONDecoder().decode(ArticleList.self, from: data)
                
                if let articleList = articleList {
                    completion(articleList.articles)
                }
            }
        }.resume()
    }
    
    // MARK: - @objc private functions
    // MARK: - IBActions
}
