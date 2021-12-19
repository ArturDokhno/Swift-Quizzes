//
//  ResultsTableViewController.swift
//  Swift-Quizzes
//
//  Created by Артур Дохно on 19.12.2021.
//

import UIKit

class ResultsTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Game.Shared.results.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResultCell", for: indexPath)
        let result = Game.Shared.results[indexPath.row]
        let date = DateFormatter()
        date.dateStyle = .short
        cell.textLabel?.text = "Дата: \(date.string(from: result.date)) -\(result.gamePoint)"
        return cell
    }
    
}
