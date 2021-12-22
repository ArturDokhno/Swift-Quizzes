//
//  MainViewController.swift
//  Swift-Quizzes
//
//  Created by Артур Дохно on 19.12.2021.
//

import UIKit

class MainViewController: UIViewController {

    @IBAction func playGame(_ sender: Any) {
        Game.Shared.gameSession = GameSession()
        Game.Shared.questionsProvider = QuestionsProvider()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "playGame" {
            guard let vc = segue.destination as? GameViewController else { return }
            vc.gameDelegate = self
            vc.numberOfQuestionStrategy = Game.Shared.randomQuestions
        } else if (segue.identifier == "toSetting") {
            guard let vc = segue.destination as? SettingTableViewController else { return }
            vc.settingsDelegate = self
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

extension MainViewController: SettingsDelegate {
    func setDifficult(seuence: Bool) {
        if seuence == true {
            Game.Shared.randomQuestions = RandomQuestions()
        } else {
            Game.Shared.randomQuestions = SeriasQuestions()
        }
    }

}
