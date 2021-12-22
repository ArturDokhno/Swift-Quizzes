//
//  SettingTableViewController.swift
//  Swift-Quizzes
//
//  Created by Артур Дохно on 22.12.2021.
//

import UIKit

protocol SettingsDelegate: AnyObject {
    func setDifficult(seuence: Bool)
}

class SettingTableViewController: UITableViewController {

    weak var settingsDelegate: SettingsDelegate?

    @IBOutlet weak var difficultySwitch: UISwitch!
    
    @IBAction func changeDifficulty(_ sender: Any) {
        settingsDelegate?.setDifficult(seuence: difficultySwitch.isOn)
    }
    
}
