//
//  ArticleListViewModel.swift
//  GoodNews
//
//  Created by Mariana Steblii on 22/12/2021.
//
import Foundation

/// is responsible for displaying a list of news article
struct ArticleListViewModel {
    let articles: [Article]
}

extension ArticleListViewModel {
    // MARK: - Public properties
    var numberOfSections: Int {
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
