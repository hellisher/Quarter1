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
    @IBOutlet weak var likeCountLabel: UILabel!
    @IBOutlet weak var commentCountLabel: UILabel!
    @IBOutlet weak var labelShareCount: UILabel!
    @IBOutlet weak var likeButtonImage: UIButton!
    @IBOutlet weak var labelViewsCount: UILabel!
    
    var likesCount: Int = 0
    
    @IBAction func buttonShare(_ sender: Any) {
    }
    
    @IBAction func likeButton(_ sender: Any) {
        if likesCount == 0 {
            likesCount += 1
            likeCountLabel.textColor = UIColor.red
            likeButtonImage.setImage(UIImage(named: "ActiveLike"), for: .normal)
        } else {
            likesCount -= 1
            likeCountLabel.textColor = UIColor.black
            likeButtonImage.setImage(UIImage(named: "NoActiveLike"), for: .normal)
        }
    }
    
    @IBAction func commentButton(_ sender: Any) {
    }
    
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
        self.likeCountLabel.text = news.newsLikesCount
        self.labelShareCount.text = news.newSharesCount
        self.commentCountLabel.text = news.newsCommentsCount
        self.labelViewsCount.text = news.newsViewsCount
    }
    
}
