//
//  NewsViewController.swift
//  190803 Lesson1.Homework
//
//  Created by Валерий Эль-Хатиб on 26/08/2019.
//  Copyright © 2019 EVM Corporation. All rights reserved.
//

import UIKit

class NewsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var news: [News] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "NewsCell", bundle: nil), forCellReuseIdentifier: "NewsCell")
        self.tableView.rowHeight = 500
        news.append(News(friendName: "Keanu Reeves", date: "23.08.2019", friendAvatar: UIImage(named: "Reeves"), newsText: "Trump is cool boy!", newsImage: UIImage(named: "Trump1")))
        news.append(News(friendName: "Nicole Kidman", date: "24.08.2019", friendAvatar: UIImage(named: "Kidman"), newsText: "What's the fucking man!", newsImage: UIImage(named: "Trump2")))
        news.append(News(friendName: "Margot Robbie", date: "25.08.2019", friendAvatar: UIImage(named: "Robbie"), newsText: "I agree!", newsImage: UIImage(named: "Trump3")))
        
        self.tableView.dataSource = self
    }
}
