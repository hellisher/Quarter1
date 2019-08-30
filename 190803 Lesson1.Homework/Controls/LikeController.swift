//
//  LikeController.swift
//  190803 Lesson1.Homework
//
//  Created by Валерий Эль-Хатиб on 27/08/2019.
//  Copyright © 2019 EVM Corporation. All rights reserved.
//

import UIKit

class LikeController: UIView {
    
    lazy var tapGesutreRecognizer: UITapGestureRecognizer = {
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(onTap))
        recognizer.numberOfTapsRequired = 1
        recognizer.numberOfTouchesRequired = 1
        return recognizer
    } ()

    @objc func onTap(_ sender: UIButton, forEvent event: UIEvent?) {
        print("LikeButton has been pressed")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addGestureRecognizer(tapGesutreRecognizer)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
//        fatalError("init(coder:) has not been implemented")
    }

}
