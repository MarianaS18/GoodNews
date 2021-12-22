//
//  Article.swift
//  GoodNews
//
//  Created by Mariana Steblii on 22/12/2021.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String
    let description: String
}
