//
//  LoginViewController.swift
//  CodeAcademyApp
//
//  Created by Arnas Sleivys on 2020-12-12.
//

import UIKit

class LoginViewController: CodeAcademyViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    
    override func viewDidLoad() {
        usernameTextField.delegate = self
        passwordTextField.delegate = self
    }

    @IBAction func loginButtonTapped(_ sender: Any) {
        for account in LocalDatabase.accounts {
            if account.username == usernameTextField.text && account.password == passwordTextField.text {
                AccountManager.loggedInAccount = account
                proceedToQuizView()
                return
            }
        }
        present(failureAlert, animated: true)
        usernameTextField.backgroundColor = .red
        passwordTextField.backgroundColor = .red
//        if
//            AccountManager.login(
//                username: usernameTextField.text,
//                password: passwordTextField.text
//            )
//        {
//            proceedToQuizView()
//        } else {
//            present(failureAlert, animated: true)
//        }
    }
    
}


