//
//  Session.swift
//  190803 Lesson1.Homework
//
//  Created by Валерий Эль-Хатиб on 15/09/2019.
//  Copyright © 2019 EVM Corporation. All rights reserved.
//

import Foundation
import UIKit

class Session {
    
    static let instance = Session()
    
    private init() {}
    
    var myName: String = ""
    var token: String = ""
    var userId: Int = 0
    var myImage: UIImage = UIImage(named: "Valerii El-Khatib")!
    //Как транслировать фотографию?

}
