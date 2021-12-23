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
    private var articleListVM: ArticleListViewModel!
    
    // MARK: - Public properties
    // MARK: - View functions
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.articleListVM == nil ? 0 : self.articleListVM.numberOfSections
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.articleListVM.numberOfRowsInSection(section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? ArticleTableViewCell else {
            fatalError("ArticleTableViewCell not found")
        }
        
        let articleVM = self.articleListVM.articleAtIndex(indexPath.row)
        cell.titleLabel.text = articleVM.title
        cell.descriptionLabel.text = articleVM.description
        return cell
    }
    
    // MARK: - Private functions
    private func setupUI() {
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let url = URL(string: "https://newsapi.org/v2/everything?q=tesla&from=2021-11-22&sortBy=publishedAt&apiKey=ea9b7f221b814ae6ab9400496dee035a")!
        WebServise().getArticles(url: url) { articles in
            if let articles = articles {
                self.articleListVM = ArticleListViewModel(articles: articles)
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
    }
    
    // MARK: - Public functions
    // MARK: - @objc private functions
    // MARK: - IBActions

}
