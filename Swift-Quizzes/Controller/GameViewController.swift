//
//  GameViewController.swift
//  Swift-Quizzes
//
//  Created by Артур Дохно on 19.12.2021.
//

import UIKit

class GameViewController: UIViewController {
    
    var questionNumber = Int()
    var answerNumber = Int()
    
    @IBOutlet var questionlabel: UILabel!
    @IBOutlet var button: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createQuestions()
    }
    
    @IBAction func button1(_ sender: Any) {
        if answerNumber == 0 {
            createQuestions()
        } else {
            NSLog("Wrong")
        }
    }
    
    @IBAction func button2(_ sender: Any) {
        if answerNumber == 1{
            createQuestions()
        } else {
            NSLog("Wrong")
        }
    }
    
    @IBAction func button3(_ sender: Any) {
        if answerNumber == 2 {
            createQuestions()
        } else {
            NSLog("Wrong")
        }
    }
    
    @IBAction func button4(_ sender: Any) {
        if answerNumber == 3 {
            createQuestions()
        } else {
            NSLog("Wrong")
        }
    }
    
    func createQuestions() {
        
        if  gameQuestions.count > 0 {
            questionNumber = 0
            questionlabel.text = gameQuestions[questionNumber].questions
            answerNumber = gameQuestions[questionNumber].numbberOfAnswer
            
            for i in 0..<button.count {
                button[i].setTitle(gameQuestions[questionNumber].answers[i], for: UIControl.State.normal)
            }
            
            gameQuestions.remove(at: questionNumber)
            
        } else {
            NSLog("Done!")
        }
    }
    
}
