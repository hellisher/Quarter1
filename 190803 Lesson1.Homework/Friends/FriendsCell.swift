//
//  FriendsCell.swift
//  190803 Lesson1.Homework
//
//  Created by Валерий Эль-Хатиб on 14/08/2019.
//  Copyright © 2019 EVM Corporation. All rights reserved.
//

import UIKit

class FriendsCell: UITableViewCell {

    @IBOutlet weak var friendName: UILabel!
    @IBOutlet weak var friendPhoto: UIImageView!
    @IBOutlet weak var friendShadow: UIView!
    @IBAction func friendPhotoButtonPressed(_ sender: Any) {
        animateSelectedFriendPhoto()
    }
    
    func animateSelectedFriendPhotoAlt() {
        UIView.animate(withDuration: 0.5,
                       delay: 0,
                       usingSpringWithDamping: 0.5,
                       initialSpringVelocity: 0,
                       options: [],
                       animations: {
            self.friendPhoto.frame.origin.x -= 100
        })
    }
    
    func animateSelectedFriendPhoto() {
        let animation = CASpringAnimation(keyPath: "transform.scale")
        animation.fromValue = 1
        animation.toValue = 0.85
//        animation.duration = 1
        animation.beginTime = CACurrentMediaTime()
        self.friendPhoto.layer.add(animation, forKey: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        friendPhoto.layer.cornerRadius = 45
        friendPhoto.layer.masksToBounds = true
        
        friendShadow.frame = friendPhoto.frame
        friendShadow.layer.backgroundColor = UIColor.black.cgColor
        friendShadow.layer.shadowColor = UIColor.black.cgColor
        friendShadow.layer.cornerRadius = 45
        friendShadow.layer.shadowRadius = 45
        friendShadow.layer.shadowOpacity = 1
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
