//
//  SettingsViewController.swift
//  Swift-Quizzes
//
//  Created by Артур Дохно on 23.12.2021.
//

import UIKit

protocol SettingsDelegate: AnyObject {
    func setDifficult (sequence: Bool)
}

class SettingsViewController: UIViewController {
    
    weak var settingsDelegate: SettingsDelegate?

    @IBOutlet var difficultySwitch: UISwitch!

    @IBAction func changeDifficulty(_ sender: Any) {
        settingsDelegate?.setDifficult(sequence: difficultySwitch.isOn)
    }

}
