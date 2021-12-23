//
//  GameViewController.swift
//  Swift-Quizzes
//
//  Created by Артур Дохно on 19.12.2021.
//

import UIKit

protocol GameDelegate: AnyObject {
    func finishGame(rightAnswer: Int, points: Int)
}

class GameViewController: UIViewController {
    
    weak var gameDelegate: GameDelegate?
    
    var numberOfQuestionStrategy: SequenceOfQuestions = RandomQuestions()
    var provider = Game.Shared.questionsProvider
    
    var questionNumber = Int()
    var rightAnswerNumber = Int()
    var rightAnswerCount = 0
    var gamePoint = 0
    var point = 10
    
    @IBOutlet var questionlabel: UILabel!
    @IBOutlet var button: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createQuestions()
    }
    
    @IBAction func button1(_ sender: Any) {
        if rightAnswerNumber == 0 {
            rightAnswerCount += 1
            gamePoint += point
            createQuestions()
        } else {
            self.gameDelegate?.finishGame(rightAnswer: rightAnswerCount, points: gamePoint)
            Game.Shared.saveResult(result: gamePoint)
        }
    }
    
    @IBAction func button2(_ sender: Any) {
        if rightAnswerNumber == 1{
            rightAnswerCount += 1
            gamePoint += point
            createQuestions()
        } else {
            self.gameDelegate?.finishGame(rightAnswer: rightAnswerCount, points: gamePoint)
            Game.Shared.saveResult(result: gamePoint)
        }
    }
    
    @IBAction func button3(_ sender: Any) {
        if rightAnswerNumber == 2 {
            rightAnswerCount += 1
            gamePoint += point
            createQuestions()
        } else {
            self.gameDelegate?.finishGame(rightAnswer: rightAnswerCount, points: gamePoint)
            Game.Shared.saveResult(result: gamePoint)
        }
    }
    
    @IBAction func button4(_ sender: Any) {
        if rightAnswerNumber == 3 {
            rightAnswerCount += 1
            gamePoint += point
            createQuestions()
        } else {
            self.gameDelegate?.finishGame(rightAnswer: rightAnswerCount, points: gamePoint)
            Game.Shared.saveResult(result: gamePoint)
        }
    }
    
    func createQuestions() {
        
        if provider.getRemainQuestionsCount() > 0 {
            questionNumber = numberOfQuestionStrategy.getQuestionsNumber(array: provider.questions)
            questionlabel.text = provider.getQuestionsText(number: questionNumber)
            rightAnswerNumber = provider.getRightAnswerNumber(number: questionNumber)
            for index in 0..<button.count {
                button[index].setTitle(provider.getAnswerText(index: index, number: questionNumber), for: UIControl.State.normal)
            }
            
            provider.questions.remove(at: questionNumber)
            
        }
    }
    
}
