//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Thulya Palihapitiya on 12/6/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionlabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var ScoreBoard: UILabel!
    
    var quizBrain = QuizBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let answer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(answer)
        
        
        if userGotItRight == true{
            sender.backgroundColor = UIColor.green
        }else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        updateUI()
    }
    
    func updateUI(){
        questionlabel.text = quizBrain.getQuizText()
        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false) { (timer) in
        self.trueButton.backgroundColor = UIColor.clear
        self.falseButton.backgroundColor = UIColor.clear
        self.ScoreBoard.text = "Score: \(self.quizBrain.getScore())"
        self.progressBar.progress = self.quizBrain.self.getProgress()
            
        }
    }
    

}
