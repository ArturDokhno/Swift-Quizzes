//
//  EndGameViewController.swift
//  Swift-Quizzes
//
//  Created by Артур Дохно on 19.12.2021.
//

import UIKit

class EndGameViewController: UIViewController {
    
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var textLable: UILabel!
    
    var text = ""
    var resultText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLable.text = text
        resultLabel.text = resultText
        
        self.navigationItem.setHidesBackButton(true, animated: false)
    }
    
}
