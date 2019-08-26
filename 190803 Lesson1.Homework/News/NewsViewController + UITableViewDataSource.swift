//
//  NewsViewController + UITableViewDataSource.swift
//  190803 Lesson1.Homework
//
//  Created by Валерий Эль-Хатиб on 26/08/2019.
//  Copyright © 2019 EVM Corporation. All rights reserved.
//

import UIKit

extension NewsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell") as! NewsCell
        cell.setupCellFromNews(news[indexPath.row])
        return cell
    }
}
