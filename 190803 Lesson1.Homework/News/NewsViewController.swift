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
        news.append(News(friendName: "Keanu Reeves", date: "23.08.2019", friendAvatar: UIImage(named: "Reeves"), newsText: "Trump was born and raised in the New York City borough of Queens, and received his B.S. degree in economics from the Wharton School at the University of Pennsylvania. He took charge of his family's real estate business in 1971, renamed it The Trump Organization, and expanded it from Queens and Brooklyn into Manhattan. The company built or renovated skyscrapers, hotels, casinos, and golf courses. Trump later started various side ventures, mostly by licensing his name. He managed the company until his 2017 inauguration. He co-authored several books, including The Art of the Deal. He owned the Miss Universe and Miss USA beauty pageants from 1996 to 2015, and produced and hosted The Apprentice, a reality television show, from 2003 to 2015. Forbes estimates his net worth to be $3.1 billion. Trump entered the 2016 presidential race as a Republican and defeated 16 other candidates in the primaries. Commentators described his political positions as populist, protectionist, and nationalist. He was elected in a surprise victory over Democratic nominee Hillary Clinton, although he lost the popular vote.[b] He became the oldest first-term U.S. president,[c] and the first one without prior military or government service. His election and policies have sparked numerous protests. Trump has made many false or misleading statements during his campaign and presidency. The statements have been documented by fact-checkers, and the media have widely described the phenomenon as unprecedented in American politics. Many of his comments and actions have also been characterized as racially charged or racist.", newsImage: UIImage(named: "Trump1"), newsLikesCount: "192", newSharesCount: "981", newsCommentsCount: "645", newsViewsCount: "213"))
        news.append(News(friendName: "Nicole Kidman", date: "24.08.2019", friendAvatar: UIImage(named: "Kidman"), newsText: "What's the fucking man!", newsImage: UIImage(named: "Trump2"), newsLikesCount: "192", newSharesCount: "981", newsCommentsCount: "645", newsViewsCount: "213"))
        news.append(News(friendName: "Margot Robbie", date: "25.08.2019", friendAvatar: UIImage(named: "Robbie"), newsText: "I agree!", newsImage: UIImage(named: "Trump3"), newsLikesCount: "192", newSharesCount: "981", newsCommentsCount: "645", newsViewsCount: "213"))
        self.tableView.dataSource = self
    }
    
    func adjustUITextViewHeight(arg: UITextView) {
        arg.translatesAutoresizingMaskIntoConstraints = true
        arg.sizeToFit()
        arg.isScrollEnabled = false
    }
}
