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
    
    @IBAction func like(_ sender: LikeButton) {
    }
    var selectedLike: Bool? = nil
    
    private func setupLike() {
        let button = UIButton(type: .system)
        button.setTitle("Like", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.red, for: .selected)
        button.addTarget(self, action: #selector(like(_:)), for: .touchDown)
    }
    
    var likeCount: Int = 0
    
    override func beginTracking(_ touch: UITouch, with event: UIEvent?) -> Bool {
        return true
    }
    
    override func continueTracking(_ touch: UITouch, with event: UIEvent?) -> Bool {
        return true
    }
    
    override func endTracking(_ touch: UITouch?, with event: UIEvent?) {
        
    }

    override func cancelTracking(with event: UIEvent?) {
        
    }
    
}
