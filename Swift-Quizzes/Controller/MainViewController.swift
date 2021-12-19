//
//  MainViewController.swift
//  Swift-Quizzes
//
//  Created by Артур Дохно on 19.12.2021.
//

import UIKit

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.setHidesBackButton(true, animated: false)
    }
    
    @IBAction func playGame(_ sender: Any) {
        let session = GameSession()
        Game.Shared.gameSession = session
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "playGame" {
            guard let vc = segue.destination as? GameViewController else { return }
            vc.gameDelegate = self
        }
    }
    
}

extension MainViewController: GameDelegate {
    func finishGame(rightAnswer: Int, points: Int) {
        let session = Game.Shared.gameSession
        session.rightAnswerCount = rightAnswer
        session.gamePoint = points
    }
    
}
