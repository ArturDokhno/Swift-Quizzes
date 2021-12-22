//
//  QuestionsProvider.swift
//  Swift-Quizzes
//
//  Created by Артур Дохно on 22.12.2021.
//

import UIKit

class QuestionsProvider {
    
    var questions: [Question] = gameQuestions
    
    func getRemainQuestionsCount() -> Int {
        return questions.count
    }
    
    func getQuestionsText(number: Int) -> String {
        return questions[number].questions
    }
    
    func getRightAnswerNumber(number: Int) -> Int {
        return questions[number].numbberOfAnswer
    }
    
    func getAnswerText(index: Int, number: Int) -> String {
        return questions[number].answers[index]
    }
}
