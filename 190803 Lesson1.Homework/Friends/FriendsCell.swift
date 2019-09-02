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
    
    //thinking
    func animateAuthButton() {
        let animation = CASpringAnimation(keyPath: "transform.scale")
        animation.fromValue = 0
        animation.toValue = 1
        animation.stiffness = 200
        animation.mass = 2
        animation.duration = 2
        animation.beginTime = CACurrentMediaTime() + 1
        animation.fillMode = CAMediaTimingFillMode.backwards
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
