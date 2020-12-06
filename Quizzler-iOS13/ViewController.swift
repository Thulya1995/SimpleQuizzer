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
    
    let quiz = [
    Question(questionText: "National day in Sr Lnaka is 4th of February", answer: "True"),
    Question(questionText: " Two + four is Seven", answer: "False"),
    Question(questionText: "five is greater than ten", answer: "True")]
    
    var qNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let size = quiz.capacity
        let answer = sender.currentTitle
        
        if answer == quiz[qNumber].answer {
            sender.backgroundColor = UIColor.green
            
        }else {
            sender.backgroundColor = UIColor.red
            
        }
        
        if qNumber < size-1{
            qNumber+=1
        }else{
            qNumber = 0
        }
        updateUI()
        progressBar.progress = Float(qNumber) / Float(size)
    }
    
    func updateUI(){
        questionlabel.text = quiz[qNumber].questionText
        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false) { (timer) in
        self.trueButton.backgroundColor = UIColor.clear
        self.falseButton.backgroundColor = UIColor.clear
        self.progressBar.progress = Float(self.qNumber + 1) / Float(self.quiz.capacity)
        }
    }
    
    

}

