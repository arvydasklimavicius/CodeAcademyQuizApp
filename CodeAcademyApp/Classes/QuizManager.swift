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
            question: "How many days does it take for the Earth to orbit the Sun?",
            correctAnswer: "365",
            firstChoice: "265",
            secondChoice: "364",
            thirdChoice: "365",
            fourthChoice: "366"),
        Question(
            question: "When did they open the London underground?",
            correctAnswer: "1863",
            firstChoice: "1963",
            secondChoice: "1836",
            thirdChoice: "1906",
            fourthChoice: "1886"),
        Question(
            question: "When was Netflix founded",
            correctAnswer: "1997",
            firstChoice: "2001",
            secondChoice: "1997",
            thirdChoice: "2009",
            fourthChoice: "2015")
    ]
    
    static func handleQuestion(_ question: Question, answerText: String) {
        
    }
    
}

private extension QuizManager {
    
}


