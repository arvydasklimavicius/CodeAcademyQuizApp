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

//MARK: - textFields delegates
    
    func textField(_ textField: UITextField,
                   shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool {
        if textField == usernameTextField {
            let replacementSet = CharacterSet(charactersIn: string)
            return CharacterSet.alphanumerics.isSuperset(of: replacementSet)
        }
        return true
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        if textField == passwordTextField {
            let alert = UIAlertController(
                title: "ERROR!",
                message: "Please fill Username field",
                preferredStyle: .alert
            )
            let alertButton = UIAlertAction(
                title: "OK",
                style: .default
            )
            alert.addAction(alertButton)
            present(alert, animated: true, completion: nil)
            return !(usernameTextField.text ?? "").isEmpty
  
        }
        return true
    }
    
    
}




