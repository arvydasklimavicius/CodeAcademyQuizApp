//
//  QuestionViewController.swift
//  CodeAcademyApp
//
//  Created by Arnas Sleivys on 2020-12-28.
//

import UIKit
import Foundation

class QuestionViewController: UIViewController {

    // MARK: - UI Components

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var firstChoiceButton: UIButton!
    @IBOutlet weak var secondChoiceButton: UIButton!
    @IBOutlet weak var thirdChoiceButton: UIButton!
    @IBOutlet weak var fourthChoiceButton: UIButton!
    
    var currentQuestion: Question?
    var questionIndex = 0
    private let quizTimer = QuizTimer()
    
    lazy var timeIsUpAlert: UIAlertController = {
        let alert = UIAlertController(
            title: "Time is Up!",
            message: "Do you want to think longer?",
            preferredStyle: .alert
        )
        let alertButton = UIAlertAction(
            title: "Yes",
            style: .default) { [unowned self] _ in
            self.quizTimer.start()
        }
        let cancelButton = UIAlertAction(
            title: "Cancel",
            style: .destructive
            )
        alert.addAction(alertButton)
        alert.addAction(cancelButton)
        return alert
        
    }()
    

    // MARK: - Button actions

    @IBAction func choiceButtonTapped(_ sender: UIButton) {
        
        nextQuestion()
//        switch sender {
//        case firstChoiceButton:
//            <#code#>
//        case secondChoiceButton:
//        case thirdChoiceButton:
//        case fourthChoiceButton:
//        default:
//            return
//        }
        
    }
    

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        startQuiz()
        quizTimer.delegate = self
        quizTimer.start()
    }
    
    
}

//MARK:- Helper functions

extension QuestionViewController {
    
    func startQuiz() {
        
        if let firstQuestion = QuizManager.questions.first {
            questionLabel.text = firstQuestion.question
            firstChoiceButton.setTitle(firstQuestion.firstChoice, for: .normal)
            secondChoiceButton.setTitle(firstQuestion.secondChoice, for: .normal)
            thirdChoiceButton.setTitle(firstQuestion.thirdChoice, for: .normal)
            fourthChoiceButton.setTitle(firstQuestion.fourthChoice, for: .normal)
            
        }
  
    }
    
    func nextQuestion() {
        questionIndex += 1
        if questionIndex < QuizManager.questions.count {
            let firstQuestion = QuizManager.questions[questionIndex]
            questionLabel.text = firstQuestion.question
            firstChoiceButton.setTitle(firstQuestion.firstChoice, for: .normal)
            secondChoiceButton.setTitle(firstQuestion.secondChoice, for: .normal)
            thirdChoiceButton.setTitle(firstQuestion.thirdChoice, for: .normal)
            fourthChoiceButton.setTitle(firstQuestion.fourthChoice, for: .normal)
        } else {
            dismiss(animated: true, completion: nil)
        }
        
    }
}

//MARK: - Delegates

extension QuestionViewController: QuizTimerDelegate {
    
    func quizTimerDidFire(_ quizTimer: QuizTimer) {
        present(timeIsUpAlert, animated: true, completion: nil)
    }
    
    func quizTimerTimeInterval() -> Double {
        return 10
    }
    
    func quizTimerShouldRepeat() -> Bool {
        return false
    }
    
    
}


