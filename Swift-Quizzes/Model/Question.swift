//
//  Question.swift
//  Swift-Quizzes
//
//  Created by Артур Дохно on 19.12.2021.
//

import UIKit

struct Question {
    let questions: String
    let answers: [String]
    let numbberOfAnswer: Int
}

var gameQuestions: [Question] = [questions1, questions2, questions3, questions4, questions5, questions7, questions8, questions9, questions10]

// MARK: - Вопросы

var questions1 = Question(questions: "Возможно ли обьявление нескольких констант в одну сроку",
                          answers: ["Нет, каждая с новой строки",
                                    "Да, черещ обратный слеш",
                                    "Да, через запятую",
                                    "Да, через двоеточие"],
                          numbberOfAnswer: 2)

var questions2 = Question(questions: "Именованный участок в памяти, в котором хранится некоторое значение",
                          answers: ["Строка",
                                    "Структура",
                                    "Переменная или Константа",
                                    "Библиотека"],
                          numbberOfAnswer: 2)

var questions3 = Question(questions: "Именованый участок памяти, значение которого можно установить только один раз и нельзя изменить в дальнейшем (в Swift)",
                          answers: ["Постоянная",
                                    "Константа",
                                    "Переменная",
                                    "Лямба"],
                          numbberOfAnswer: 1)

var questions4 = Question(questions: "Какое ключевое слово используется для определения переменной?",
                          answers: ["var",
                                    "func",
                                    "let",
                                    "set"],
                          numbberOfAnswer: 0)

var questions5 = Question(questions: "Если мы точно уверены что значение переменной менятся не будет, что нам нужно использовать?",
                          answers: ["Константу",
                                    "Литерал",
                                    "Переменную",
                                    "Структуру"],
                          numbberOfAnswer: 0)

var questions6 = Question(questions: "Специальный механизм позволяющий преобразовывать одни типы данных в другие?",
                          answers: ["Подчинение",
                                    "Приведение",
                                    "Преобразование",
                                    "Обьявление"],
                          numbberOfAnswer: 1)

var questions7 = Question(questions: "Какой тип используется когда значение может отсутствовать?",
                          answers: ["Опциональный",
                                    "Кортеж",
                                    "Логический Bool",
                                    "Неявный тип"],
                          numbberOfAnswer: 0)

var questions8 = Question(questions: "Ключевое слово для подлючения модуля к контроллеру",
                          answers: ["invite",
                                    "add",
                                    "func",
                                    "import"],
                          numbberOfAnswer: 3)

var questions9 = Question(questions: "Один случай, когда в Swift необходимо ставить точку с запятой (;) в коде?",
                          answers: ["Несколько выражений на строке",
                                    "Внутри замыканий",
                                    "После каждого выражения",
                                    "Внутри цикла"],
                          numbberOfAnswer: 0)

var questions10 = Question(questions: "Какой из стандартных типов данных не является сопоставимым (Comparable)?",
                          answers: ["Character",
                                    "Double",
                                    "Bool",
                                    "Int"],
                          numbberOfAnswer: 2)
