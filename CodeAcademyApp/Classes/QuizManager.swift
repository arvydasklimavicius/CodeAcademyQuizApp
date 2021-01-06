//
//  QuizManager.swift
//  CodeAcademyApp
//
//  Created by Arvydas Klimavicius on 2021-01-04.
//

import Foundation

struct QuizManager {
    
    var score = 0
    
    
    static var questions = [
        Question(
            question: "Questioin1",
            correctAnswer: "first",
            firstChoice: "first",
            secondChoice: "second",
            thirdChoice: "third",
            fourthChoice: "fourth"),
        Question(
            question: "Klausimelis",
            correctAnswer: "third",
            firstChoice: "pirmas atsakymas",
            secondChoice: "antras atsakymas",
            thirdChoice: "trecias atsakymas",
            fourthChoice: "ketvirtas atsakymas"),
        Question(
            question: "Kelintais metais gime Steve Jobs",
            correctAnswer: "1955",
            firstChoice: "1965",
            secondChoice: "1955",
            thirdChoice: "1956",
            fourthChoice: "1966")
    ]
    
    static func handleQuestion(_ question: Question, answerText: String) {
        
    }
    
}

private extension QuizManager {
    
}


