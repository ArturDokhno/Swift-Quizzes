//
//  AddQuestionsViewController.swift
//  Swift-Quizzes
//
//  Created by Артур Дохно on 23.12.2021.
//

import UIKit

class AddQuestionsViewController: UIViewController {
    
    var game = GameQuestions()
    
    @IBOutlet var textView: UITextView!
    @IBOutlet var answer1: UITextView!
    @IBOutlet var answer2: UITextView!
    @IBOutlet var answer3: UITextView!
    @IBOutlet var answer4: UITextView!
    @IBOutlet var numberRightQuestion: UITextView!
    
    private var question = Question(questions: "", answers: [], numbberOfAnswer: 0)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        boarder(textView: textView)
        boarder(textView: answer1)
        boarder(textView: answer2)
        boarder(textView: answer3)
        boarder(textView: answer4)
        boarder(textView: numberRightQuestion)
    }
    
    @IBAction func saveQuestion(_ sender: Any) {
        if textView.text != "" {
            question.questions = textView.text
        } else {
            alert(title: "Введите вопрос")
        }
        if answer1.text != "" {
            question.answers.append(answer1.text)
        } else {
            alert(title: "Введите ответ №1")
        }
        if textView.text != "" {
            question.answers.append(answer2.text)
        } else {
            alert(title: "Введите ответ №2")
        }
        if textView.text != "" {
            question.answers.append(answer3.text)
        } else {
            alert(title: "Введите ответ №3")
        }
        if textView.text != "" {
            question.answers.append(answer4.text)
        } else {
            alert(title: "Введите ответ №4")
        }
        if textView.text != "" {
            question.numbberOfAnswer = (Int(numberRightQuestion.text) ?? 0) - 1
            print(question.numbberOfAnswer)
        } else {
            alert(title: "Введите номер правильного ответа")
        }
        
        game.gameQuestions.append(question)
        game.questionsCareTaker.saveQuestions(questions: game.gameQuestions)
    }
    
    func alert(title: String) {
        let alertController = UIAlertController(title: title, message: "Ошибка", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    func boarder(textView: UITextView) {
              textView.layer.cornerRadius = 10
              textView.clipsToBounds = true
     }

}


