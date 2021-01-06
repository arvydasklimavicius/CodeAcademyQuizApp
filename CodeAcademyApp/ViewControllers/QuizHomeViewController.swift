//
//  QuizHomeViewController.swift
//  CodeAcademyApp
//
//  Created by Arnas Sleivys on 2020-12-28.
//

import UIKit

class QuizHomeViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!

    @IBAction func beginButtonPressed(_ sender: Any) {
        proceedToQuestionView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let loggedInAccount = AccountManager.loggedInAccount else { return }
        addQuestionsButton.isHidden  = loggedInAccount.accountType == .normal
        welcomeLabel.text = "Welcome to the quiz, " + loggedInAccount.username
        }
    
    @IBAction func logoutButtonPressed(_ sender: Any) {
            dismiss(animated: true)
        }

        @IBAction func addQuestionsPressed(_ sender: Any) {
            proceedToAddQuestionView()
        }

        func proceedToAddQuestionView() {
            let storyboard = UIStoryboard(name: "QuizHome", bundle: nil)
            let questionViewController = storyboard.instantiateViewController(identifier: "AddQuestionViewController")
            present(questionViewController, animated: true)
        }
    
    @IBOutlet weak var addQuestionsButton: UIButton!
}

// MARK: - Helpers

extension QuizHomeViewController {

    func proceedToQuestionView() {
        let storyboard = UIStoryboard(name: "QuizHome", bundle: nil)
        let questionViewController = storyboard.instantiateViewController(identifier: "QuestionViewController")
        present(questionViewController, animated: true)
    }
}
