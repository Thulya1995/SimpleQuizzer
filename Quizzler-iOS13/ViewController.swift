//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionlabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [["National day in Sr Lnaka is 4th of February","True"],[" Two + four is Seven","False"],["five is greater than ten","False"]]
    var qNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let size = quiz.capacity
        let answer = sender.currentTitle
        
        if answer == quiz[qNumber][1] {
            print("Correct Answer")
        }else {
            print("Wrong Answer")
        }
        
        if qNumber < size-1{
            qNumber+=1
        }else{
            qNumber = 0
        }
        updateUI()
    }
    
    func updateUI(){
        questionlabel.text = quiz[qNumber][0]
    }
    

}

