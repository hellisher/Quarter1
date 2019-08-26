//
//  NewsCell.swift
//  190803 Lesson1.Homework
//
//  Created by Валерий Эль-Хатиб on 25/08/2019.
//  Copyright © 2019 EVM Corporation. All rights reserved.
//

import UIKit

class NewsCell: UITableViewCell {
    @IBOutlet weak var friendNameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var friendAvatarImageView: UIImageView!
    @IBOutlet weak var newsTextView: UITextView!
    @IBOutlet weak var newsImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        friendAvatarImageView.layer.cornerRadius = 45
        friendAvatarImageView.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setupCellFromNews(_ news: News) {
        self.friendNameLabel.text = news.friendName
        self.dateLabel.text = news.date
        self.friendAvatarImageView.image = news.friendAvatar
        self.newsTextView.text = news.newsText
        self.newsImageView.image = news.newsImage
        
    }
    
}
