//
//  RandomQuestions.swift
//  Swift-Quizzes
//
//  Created by Артур Дохно on 22.12.2021.
//

import UIKit

final class RandomQuestions: SequenceOfQuestions {
    func getQuestionsNumber(array: [Question]) -> Int {
        let questionNumber = Int(arc4random_uniform(UInt32(array.count)))
        return questionNumber
    }
}

