//
//  Question.swift
//  Swift-Quizzes
//
//  Created by Артур Дохно on 19.12.2021.
//

import UIKit

struct Question: Codable {
    var questions: String
    var answers: [String]
    var numbberOfAnswer: Int
}

class GameQuestions {
    
    var questionsCareTaker = QuestionsCareTaker()
    
    var gameQuestions: [Question] = [
        Question(questions: "Возможно ли обьявление нескольких констант в одну сроку",
                 answers: ["Нет, каждая с новой строки",
                           "Да, через обратный слеш",
                           "Да, через запятую",
                           "Да, через двоеточие"],
                 numbberOfAnswer: 2),
        Question(questions: "Именованный участок в памяти, в котором хранится некоторое значение",
                 answers: ["Строка",
                           "Структура",
                           "Переменная или Константа",
                           "Библиотека"],
                 numbberOfAnswer: 2),
        Question(questions: "Именованый участок памяти, значение которого можно установить только один раз и нельзя изменить в дальнейшем (в Swift)",
                 answers: ["Постоянная",
                           "Константа",
                           "Переменная",
                           "Лямба"],
                 numbberOfAnswer: 1),
        Question(questions: "Какое ключевое слово используется для определения переменной?",
                 answers: ["var",
                           "func",
                           "let",
                           "set"],
                 numbberOfAnswer: 0),
        Question(questions: "Если мы точно уверены что значение переменной менятся не будет, что нам нужно использовать?",
                 answers: ["Константу",
                           "Литерал",
                           "Переменную",
                           "Структуру"],
                 numbberOfAnswer: 0),
        Question(questions: "Специальный механизм позволяющий преобразовывать одни типы данных в другие?",
                 answers: ["Подчинение",
                           "Приведение",
                           "Преобразование",
                           "Обьявление"],
                 numbberOfAnswer: 1),
        Question(questions: "Какой тип используется когда значение может отсутствовать?",
                 answers: ["Опциональный",
                           "Кортеж",
                           "Логический Bool",
                           "Неявный тип"],
                 numbberOfAnswer: 0),
        Question(questions: "Ключевое слово для подлючения модуля к контроллеру",
                 answers: ["invite",
                           "add",
                           "func",
                           "import"],
                 numbberOfAnswer: 3),
        Question(questions: "Один случай, когда в Swift необходимо ставить точку с запятой (;) в коде?",
                 answers: ["Несколько выражений на строке",
                           "Внутри замыканий",
                           "После каждого выражения",
                           "Внутри цикла"],
                 numbberOfAnswer: 0),
        Question(questions: "Какой из стандартных типов данных не является сопоставимым (Comparable)?",
                 answers: ["Character",
                           "Double",
                           "Bool",
                           "Int"],
                 numbberOfAnswer: 2)
    ]
}
