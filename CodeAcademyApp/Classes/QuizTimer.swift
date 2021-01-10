//
//  QuizTimer.swift
//  CodeAcademyApp
//
//  Created by Arvydas Klimavicius on 2021-01-10.
//

import Foundation

protocol QuizTimerDelegate: AnyObject {
    func quizTimerDidFire(_ quizTimer: QuizTimer)
    func quizTimerTimeInterval() -> Double
    func quizTimerShouldRepeat() -> Bool
}


class QuizTimer {
    private var timer: Timer?
    weak var delegate: QuizTimerDelegate?
    
    init() {
        
    }
    
    func start() {
        guard let delegate = delegate else {
            return
        }
        
        timer = Timer.scheduledTimer(timeInterval: delegate.quizTimerTimeInterval(),
                                     target: self,
                                     selector: #selector(onTimerFired),
                                     userInfo: nil,
                                     repeats: delegate.quizTimerShouldRepeat())
    }
    
    func finish() {
        timer?.invalidate()
        timer = nil
    }
    
    @objc
    private func onTimerFired() {
        delegate?.quizTimerDidFire(self)
    }
}
