//
//  CodeAcademyViewController.swift
//  CodeAcademyApp
//
//  Created by Arvydas Klimavicius on 2021-01-04.
//

import UIKit

class CodeAcademyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    lazy var successAlert: UIAlertController = {
        let alert = UIAlertController(
            title: "Success!",
            message: "Login was sucessful!",
            preferredStyle: .alert
        )
        let alertButton = UIAlertAction(
            title: "OK",
            style: .default
        )
        alert.addAction(alertButton)
        return alert
    }()

    lazy var failureAlert: UIAlertController = {
        let alert = UIAlertController(
            title: "Failure!",
            message: "Operation failed",
            preferredStyle: .alert
        )
        let alertButton = UIAlertAction(
            title: "OK",
            style: .default
        )
        alert.addAction(alertButton)
        return alert
    }()
    
}



extension CodeAcademyViewController {
    //@objc reikia norint daryti override is extensiono
    @objc func proceedToQuizView() {
        let storyboard = UIStoryboard(name: "QuizHome", bundle: nil)
        let quizHomeViewController = storyboard.instantiateViewController(identifier: "QuizHomeViewController")
        present(quizHomeViewController, animated: true)
    }
}

extension CodeAcademyViewController: UITextFieldDelegate {

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
