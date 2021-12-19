//
//  GameSession.swift
//  Swift-Quizzes
//
//  Created by Артур Дохно on 19.12.2021.
//

import Foundation

class GameSession {
    var answersCount = gameQuestions.count
    var rightAnswerCount = 0
    var gamePoint = Int()
}

class Game {
    
    static let Shared = Game()
    
    private let gameResultCaretaker = GameResultCaretaker()
    
    var gameSession = GameSession()
    
    private(set) var results: [GameResult] {
        didSet {
            gameResultCaretaker.save(gameResult: self.results)
        }
    }
    
    private init() {
        self.results = gameResultCaretaker.getResult()
    }
    
    func saveResult(result: Int) {
        let result = GameResult(date: Date(), gamePoint: result)
        results.append(result)
    }
}

struct GameResult: Codable {
    var date = Date()
    var gamePoint = Int()
}
