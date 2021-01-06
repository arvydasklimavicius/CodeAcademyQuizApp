//
//  RegisterViewController.swift
//  CodeAcademyApp
//
//  Created by Arnas Sleivys on 2020-12-12.
//

import UIKit
import Foundation

class RegisterViewController: CodeAcademyViewController {

    @IBOutlet private weak var usernameTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    

    override func viewDidLoad() {
        usernameTextField.delegate = self
        passwordTextField.delegate = self
    }

    
    @IBAction func registerButtonPressed(_ sender: Any) {
        if
            AccountManager.registerAccount(
                username: usernameTextField.text,
                password: passwordTextField.text
            )
        {
            proceedToQuizView()
        } else {
            present(failureAlert, animated: true)
        }
    }
    
}


