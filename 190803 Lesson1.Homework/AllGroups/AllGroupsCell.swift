//
//  AllGroupsCell.swift
//  190803 Lesson1.Homework
//
//  Created by Валерий Эль-Хатиб on 15/08/2019.
//  Copyright © 2019 EVM Corporation. All rights reserved.
//

import UIKit

class AllGroupsCell: UITableViewCell {

    @IBOutlet weak var allGroupName: UILabel!
    @IBOutlet weak var allGroupsImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
