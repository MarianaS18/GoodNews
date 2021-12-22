//
//  ArticleListViewModel.swift
//  GoodNews
//
//  Created by Mariana Steblii on 22/12/2021.
//
// MARK: - IBOutlets
// MARK: - Private properties
// MARK: - View functions
// MARK: - Private functions
// MARK: - @objc private functions
// MARK: - IBActions

import Foundation

/// is responsible for displaying a list of news article
struct ArticleListViewModel {
    let articles: [Article]
}

extension ArticleListViewModel {
    // MARK: - Public properties
    var numberOfSection: Int {
        return 1
    }
    
    // MARK: - Public functions
    func numberOfRowsInSection(_ section: Int) -> Int {
        return articles.count
    }
    
    func articleAtIndex(_ index: Int) -> ArticleViewModel {
        let article = articles[index]
        return ArticleViewModel(article)
    }
}
