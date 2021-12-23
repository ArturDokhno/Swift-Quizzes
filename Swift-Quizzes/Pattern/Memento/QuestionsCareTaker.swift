//
//  QuestionsCareTaker.swift
//  Swift-Quizzes
//
//  Created by Артур Дохно on 23.12.2021.
//

import Foundation

class QuestionsCareTaker {
    
    private var encoder = JSONEncoder()
    private var decoder = JSONDecoder()
    
    private var key = "question"
    
    func saveQuestions(questions: [Question]) {
        do {
            let data = try encoder.encode(questions)
            UserDefaults.standard.set(data, forKey: key)
        } catch {
            print(error)
        }
    }
    
    func getQuestion() -> [Question] {
        
        guard let data = UserDefaults.standard.data(forKey: key) else { return [] }
        
        do {
            return try decoder.decode([Question].self, from: data)
        } catch {
            print(error)
            return []
        }
    }
    
}
