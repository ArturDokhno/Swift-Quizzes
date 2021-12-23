//
//  AddQuestionsViewController.swift
//  Swift-Quizzes
//
//  Created by Артур Дохно on 23.12.2021.
//

import UIKit

class AddQuestionsViewController: UIViewController {
    
    @IBOutlet var textView: UITextView!
    @IBOutlet var answer1: UITextView!
    @IBOutlet var answer2: UITextView!
    @IBOutlet var answer3: UITextView!
    @IBOutlet var answer4: UITextView!
    @IBOutlet var numberRightQuestion: UITextView!

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
        
    }
    
    func boarder(textView: UITextView) {
              textView.layer.cornerRadius = 10
              textView.clipsToBounds = true
     }

}


