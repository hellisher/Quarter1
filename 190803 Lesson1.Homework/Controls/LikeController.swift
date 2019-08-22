//
//  Like.swift
//  190803 Lesson1.Homework
//
//  Created by Валерий Эль-Хатиб on 19/08/2019.
//  Copyright © 2019 EVM Corporation. All rights reserved.
//

import UIKit
import Foundation

@IBDesignable class Like: UIControl {
    
    var likeCount: Int = 0
    
    @IBAction func Like(_ sender: Any) {
        likeCount += 1
        print(likeCount)
    }
    

}
