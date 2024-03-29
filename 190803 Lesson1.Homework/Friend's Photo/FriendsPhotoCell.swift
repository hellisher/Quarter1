//
//  FriendsPhotoCell.swift
//  190803 Lesson1.Homework
//
//  Created by Валерий Эль-Хатиб on 15/08/2019.
//  Copyright © 2019 EVM Corporation. All rights reserved.
//

import UIKit

class FriendsPhotoCell: UICollectionViewCell {
    @IBOutlet weak var photo: UIImageView!
    var likeCount: Int = 0
    @IBOutlet weak var likeCountLabel: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    
    @IBAction func likeButtonTap(_ sender: Any) {
        if likeCount == 0 {
            likeCount += 1
            likeCountLabel.text = String(likeCount)
            likeCountLabel.textColor = UIColor.red
            likeButton.setImage(UIImage(named: "ActiveLike"), for: .normal)
            animateLikeCountLabel()
        } else {
            likeCount -= 1
            likeCountLabel.text = String(likeCount)
            likeCountLabel.textColor = UIColor.black
            likeButton.setImage(UIImage(named: "NoActiveLike"), for: .normal)
            animateLikeCountLabel()
        }
    }
    
    func animateLikeCountLabel() {
        UIView.transition(with: likeCountLabel,
                          duration: 1,
                          options: .transitionFlipFromTop,
                          animations: {},
                          completion: nil)
    }
}
