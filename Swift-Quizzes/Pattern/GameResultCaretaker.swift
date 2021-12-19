//
//  GameResultCaretaker.swift
//  Swift-Quizzes
//
//  Created by Артур Дохно on 19.12.2021.
//

import Foundation

final class GameResultCaretaker {
    
    private let encoder = JSONEncoder()
    private let decoder = JSONDecoder()
    
    private let key = "results"
    
    func save(gameResult: [GameResult]) {
        do {
            let data = try encoder.encode(gameResult)
            UserDefaults.standard.set(data, forKey: key)
        } catch {
            print(error)
        }
    }
    
    func getResult() -> [GameResult] {
        guard let data = UserDefaults.standard.data(forKey: key) else { return [] }
        
        do {
            return try decoder.decode([GameResult].self, from: data)
        } catch {
            print(error)
            return []
        }
    }
}
