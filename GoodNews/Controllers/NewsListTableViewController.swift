//
//  NewsListTableViewController.swift
//  GoodNews
//
//  Created by Mariana Steblii on 22/12/2021.
//

import UIKit

class NewsListTableViewController: UITableViewController {
    // MARK: - IBOutlets
    // MARK: - Private properties
    // MARK: - Public properties
    // MARK: - View functions
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - Private functions
    private func setupUI() {
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let url = URL(string: "https://newsapi.org/v2/everything?q=tesla&from=2021-11-22&sortBy=publishedAt&apiKey=ea9b7f221b814ae6ab9400496dee035a")!
        WebServise().getArticles(url: url) { _ in
            
        }
    }
    
    // MARK: - Public functions
    // MARK: - @objc private functions
    // MARK: - IBActions

}
