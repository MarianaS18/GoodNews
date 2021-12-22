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
    }
    
    // MARK: - Public functions
    // MARK: - @objc private functions
    // MARK: - IBActions

}
