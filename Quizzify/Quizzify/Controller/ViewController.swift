//
//  ViewController.swift
//  Quizzify
//
//  Created by Vaibhav Patil.

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    //using struct for questions
    var quizBrain = QuizBrain()
    override func viewDidLoad() {
        trueButton.layer.cornerRadius = 10
        trueButton.clipsToBounds = true
        falseButton.layer.cornerRadius = 10
        falseButton.clipsToBounds = true
        progressBar.transform = progressBar.transform.scaledBy(x: 1, y: 02)


        super.viewDidLoad()
            updateUI()
        // Do any additional setup after loading the view.
    }


    @IBAction func answerPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle! //answer
        let userGotRight = quizBrain.checkAnswer(userAnswer)
        //let actualAnswer = quiz[questionNumber].answer
        
        if userGotRight{
            print("Correct") //developer
            sender.backgroundColor = UIColor.green  //user view
            
        }
        else
        {
            print("Incorrect") //developer
            sender.backgroundColor = UIColor.red // user view
            
        }
        
        quizBrain.nextQuestion()
        // Introducing time delay for button color
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    @objc func updateUI(){
        questionLabel.text = quizBrain.getQuestionText()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        //reseting button color to normal
        trueButton.backgroundColor = UIColor.orange
        falseButton.backgroundColor = UIColor.orange
        progressBar.progress = quizBrain.getProgress()
    }
}
