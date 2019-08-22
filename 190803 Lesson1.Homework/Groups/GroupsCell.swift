//
//  GroupsCell.swift
//  190803 Lesson1.Homework
//
//  Created by Валерий Эль-Хатиб on 14/08/2019.
//  Copyright © 2019 EVM Corporation. All rights reserved.
//

import UIKit

class GroupsCell: UITableViewCell {

    @IBOutlet weak var groupName: UILabel!
    @IBOutlet weak var groupImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        groupImage.layer.cornerRadius = 45
        groupImage.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
