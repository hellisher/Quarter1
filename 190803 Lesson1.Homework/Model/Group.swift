//
//  Group.swift
//  190803 Lesson1.Homework
//
//  Created by Валерий Эль-Хатиб on 15/08/2019.
//  Copyright © 2019 EVM Corporation. All rights reserved.
//

import Foundation
import UIKit

struct Group {
    var groupName: String
    var groupAvatar: UIImage?
}

let wylsacom = Group(groupName: "Wylsacom", groupAvatar: UIImage(named: "Wylsacom"))
let swift = Group(groupName: "Swift", groupAvatar: UIImage(named: "Swift"))
let apple = Group(groupName: "Apple", groupAvatar: UIImage(named: "Apple"))
let myLoveIsPorn = Group(groupName: "My Love is Porn", groupAvatar: UIImage(named: "My Love is Porn"))
let bloomberg = Group(groupName: "Bloomberg", groupAvatar: UIImage(named: "Bloomberg"))

let globalGroups = [wylsacom, swift, apple, myLoveIsPorn, bloomberg]
