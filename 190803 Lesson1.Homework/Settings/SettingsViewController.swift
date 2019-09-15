//
//  SettingsViewController.swift
//  190803 Lesson1.Homework
//
//  Created by Валерий Эль-Хатиб on 15/09/2019.
//  Copyright © 2019 EVM Corporation. All rights reserved.
//

import UIKit



class SettingsViewController: UIViewController {

    @IBOutlet weak var myNameLabel: UILabel?
    @IBOutlet weak var myTokenLabel: UILabel?
    @IBOutlet weak var myUserIdLabel: UILabel?
    @IBOutlet weak var myImage: UIImageView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let session = Session.instance
        myNameLabel?.text = session.myName
        myTokenLabel?.text = session.token
        myUserIdLabel?.text = String(describing: session.userId)
        myImage?.image = session.myImage
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
