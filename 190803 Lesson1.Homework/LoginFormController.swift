//
//  LoginFormController.swift
//  190803 Lesson1.Homework
//
//  Created by Валерий Эль-Хатиб on 03/08/2019.
//  Copyright © 2019 EVM Corporation. All rights reserved.
//

import UIKit

class LoginFormController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var loginInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "House.jpg")!)
        let hideKeyboardGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        scrollView?.addGestureRecognizer(hideKeyboardGesture)
        activityIndicator.startAnimating()
        
        let session = Session.instance
        session.myName = "Valerii El-Khatib"
        session.token = "I'm loving cheesecakes!"
        session.userId = 13776677
        session.myImage = UIImage(named: "Valerii El-Khatib")!
    }

    @objc func keyboardWasShown(notification: Notification) {
        let info = notification.userInfo! as NSDictionary
        let kbSize = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
        let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: kbSize.height, right: 0.0)
        self.scrollView?.contentInset = contentInsets
        scrollView?.scrollIndicatorInsets = contentInsets
    }
    
    @objc func keyboardWillBeHidden(notification: Notification) {
        let contentInsets = UIEdgeInsets.zero
        scrollView?.contentInset = contentInsets
        scrollView?.scrollIndicatorInsets = contentInsets
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWasShown), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func hideKeyboard() {
        self.scrollView?.endEditing(true)
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        let login = loginInput.text!
        let password = passwordInput.text!
        if login == "" && password == "" {
            print("Welcome, Boss!")
            self.performSegue(withIdentifier: "Success", sender: nil)
        } else {
            print("You are invalid!")
            let alert = UIAlertController(title: "Error", message: "Are you invalid?", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok, Chief", style: .cancel, handler: { _ in
                print("Ok... Chief...")
            }))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
}
