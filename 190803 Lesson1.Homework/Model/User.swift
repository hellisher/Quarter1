//
//  User.swift
//  190803 Lesson1.Homework
//
//  Created by Валерий Эль-Хатиб on 15/08/2019.
//  Copyright © 2019 EVM Corporation. All rights reserved.
//

import Foundation
import UIKit

struct Friend {
    var friendName: String
    var friendAvatar: UIImage?
}

let reeves = Friend(friendName: "Keanu Reeves", friendAvatar: UIImage(named: "Reeves"))
let dicaprio = Friend(friendName: "Leonardo DiCaprio", friendAvatar: UIImage(named: "DiCaprio"))
let pitt = Friend(friendName: "Brad Pitt", friendAvatar: UIImage(named: "Pitt"))
let kidman = Friend(friendName: "Nicole Kidman", friendAvatar: UIImage(named: "Kidman"))
let robbie = Friend(friendName: "Margot Robbie", friendAvatar: UIImage(named: "Robbie"))

let myFriends = [reeves, dicaprio, pitt, kidman, robbie]
