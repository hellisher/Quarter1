//
//  TestView.swift
//  190803 Lesson1.Homework
//
//  Created by Валерий Эль-Хатиб on 19/08/2019.
//  Copyright © 2019 EVM Corporation. All rights reserved.
//

import UIKit

class TestView: UIView {
    
    @IBInspectable var radius: CGFloat = 10 {
        didSet {
            setNeedsDisplay()
        }
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        guard let context = UIGraphicsGetCurrentContext() else { return }
        context.setFillColor(UIColor.red.cgColor)
        context.fillEllipse(in: CGRect(x: rect.midX - radius, y: rect.midY - radius, width: radius * 2, height: radius * 2))
    }

}
