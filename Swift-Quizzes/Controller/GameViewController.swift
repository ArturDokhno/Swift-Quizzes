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
    
    var questionNumber = Int()
    var rightAnswerNumber = Int()
    var rightAnswerCount = 0
    var gamePoint = 0
    var point = 10
    
    @IBOutlet var questionlabel: UILabel!
    @IBOutlet var button: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.setHidesBackButton(true, animated: false)
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
            pushEndGameVC()
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
            pushEndGameVC()
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
            pushEndGameVC()
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
            pushEndGameVC()
        }
    }
    
    func createQuestions() {
        
        if  gameQuestions.count > 0 {
            questionNumber = 0
            questionlabel.text = gameQuestions[questionNumber].questions
            rightAnswerNumber = gameQuestions[questionNumber].numbberOfAnswer
            
            for i in 0..<button.count {
                button[i].setTitle(gameQuestions[questionNumber].answers[i], for: UIControl.State.normal)
            }
            
            gameQuestions.remove(at: questionNumber)
            
        } else {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(
                withIdentifier: "EndGameViewController") as! EndGameViewController
            vc.text = "Поздравляю вы выиграли!"
            vc.resultText = "Вы заработали: \(gamePoint)"
            Game.Shared.saveResult(result: gamePoint)
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    func pushEndGameVC() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(
            withIdentifier: "EndGameViewController") as! EndGameViewController
        vc.text = "Вы проиграли!"
        vc.resultText = "Вы заработали: \(gamePoint)"
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
