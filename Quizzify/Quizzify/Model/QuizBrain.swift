//
//  QuizBrain.swift
//  Quizzify
//
//  Created by Vaibhav Patil on 25/10/20.
//

import Foundation

struct QuizBrain{
    let quiz = [
        Question(q: "One plus One Equals Two.", a: "True"),
        
        Question(q: "Goldfish only have a memory of three seconds.", a:"False"),
        Question(q: "Cyclones spin in a clockwise direction in the southern hemisphere."
                 ,a:"True"),
        Question(q: "An octopus has five hearts.",a:"False"),
        Question(q: "Brazil is the only country in the Americas to have the official language of Portuguese.",a:"True"),
        Question(q: "The currency of France is the Franc.",a:"False"),
        Question(q: "The Great Wall of China is visible from space.",a:"False"),
        Question(q: "A metre is further than a yard.",a:"True"),
        Question(q: "There are five different blood groups.",a:"False"),
        Question(q: "Australia is wider than the moon.",a:"True"),
        Question(q: "Monaco is the smallest country in the world.",a:"False"),
        Question(q: "Queen Elizabeth II is currently the second longest reigning British monarch.",a:"False"),
        Question(q: "M&M stands for Mars and Moordale.",a:"False")
        
    ]
    
    var questionNumber=0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool  // _ external parameter
    {
        if userAnswer == quiz[questionNumber].answer{
            //correct
            score += 1
            return true
        }
        else{
            //wrong
            return false
        }
        
    }
    
    func getQuestionText() -> String{
        return quiz[questionNumber].text
        
        
    }
    
    func getScore() -> Int{
        return score
    }
    
    func getProgress() -> Float{
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
    
    mutating func nextQuestion()
    {
        
        if questionNumber + 1 < quiz.count
        {
            questionNumber += 1
        }
        else
        {
            questionNumber = 0
            score = 0 //reseting the score
        }
        
    }
}
