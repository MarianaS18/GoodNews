//
//  ArticleViewModel.swift
//  GoodNews
//
//  Created by Mariana Steblii on 22/12/2021.
//

// MARK: - IBOutlets
// MARK: - Private functions
// MARK: - Public functions
// MARK: - @objc private functions
// MARK: - IBActions

import Foundation

/// is responsible for displaying ONE particular news article
struct ArticleViewModel {
    // MARK: - Private properties
    private let article: Article
}

extension ArticleViewModel {
    // MARK: - View functions
    init(_ article: Article) {
        self.article = article
    }
}

extension ArticleViewModel {
    // MARK: - Public properties
    var title: String {
        return self.article.title
    }
    
    var description: String {
        return self.article.description
    }
}
