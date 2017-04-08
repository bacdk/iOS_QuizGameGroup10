//
//  ViewController.swift
//  QuizGameGroup10
//
//  Created by Cntt20 on 4/8/17.
//  Copyright © 2017 Cntt20. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    //
    @IBOutlet weak var Question: UILabel!
    @IBOutlet weak var AnswerA: UIButton!
    @IBOutlet weak var AnswerB: UIButton!
    @IBOutlet weak var AnswerC: UIButton!
    @IBOutlet weak var AnswerD: UIButton!
    @IBOutlet weak var Answer: UILabel!
    @IBOutlet weak var Next: UIButton!
    
    //
    var CorrectAnswer = String()
    var numberQuestion = Int()
    //

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        numberQuestion = 1
        RandomQuestion()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //Hide UnHide
    //
    func Hide(){
        Answer.isHidden = true
        Next.isHidden = true
    }
    func UnHide(){
        Answer.isHidden = false
        Next.isHidden = false
    }
    //
    //Choose Question
    func RandomQuestion(){
        
        //        var RandomNumber = arc4random() % 5
        //        RandomNumber += 1
        //
        Hide()
        switch(numberQuestion){
        case 1:
            Question.text = "Xcode 8.3 run on iOS version?"
            AnswerA.setTitle("iOS version 10.9", for: UIControlState.normal)
            AnswerB.setTitle("iOS version 10.10", for: UIControlState.normal)
            AnswerC.setTitle("iOS version 10.11", for: UIControlState.normal)
            AnswerD.setTitle("iOS version 10.11.12", for: UIControlState.normal)
            CorrectAnswer = "4"
            break
        case 2:
            Question.text = "What is the compiling virtual machine in Xcode "
            AnswerA.setTitle("Simulator", for: UIControlState.normal)
            AnswerB.setTitle("VMWare", for: UIControlState.normal)
            AnswerC.setTitle("Virtuabox", for: UIControlState.normal)
            AnswerD.setTitle("Linux", for: UIControlState.normal)
            CorrectAnswer = "1"
            break
        case 3:
            Question.text = "What is the Swift"
            AnswerA.setTitle("Programming language for iOS", for: UIControlState.normal)
            AnswerB.setTitle("Monney", for: UIControlState.normal)
            AnswerC.setTitle("Food", for: UIControlState.normal)
            AnswerD.setTitle("Bus", for: UIControlState.normal)
            CorrectAnswer = "1"
            break
        case 4:
            Question.text = "What is Company developed xcode?"
            AnswerA.setTitle("Apple", for: UIControlState.normal)
            AnswerB.setTitle("Samsung", for: UIControlState.normal)
            AnswerC.setTitle("Sonny", for: UIControlState.normal)
            AnswerD.setTitle("LG", for: UIControlState.normal)
            CorrectAnswer = "1"
            break
        case 5:
            Question.text = "What is platform that Swift running on?"
            AnswerA.setTitle("iOS", for: UIControlState.normal)
            AnswerB.setTitle("Linux", for: UIControlState.normal)
            AnswerC.setTitle("Windows", for: UIControlState.normal)
            AnswerD.setTitle("Ubuntu", for: UIControlState.normal)
            CorrectAnswer = "1"
            break
        default:
            break
        }
    }
    
    //
    
    @IBAction func Click_AnswerA(_ sender: Any) {
        UnHide()
        if(CorrectAnswer == "1"){
            Answer.text = "You are Corect!!!"
        }
        else{
            Answer.text = "You are WRONGGGG!!!"
        }
        
    }
    @IBAction func Click_AnswerB(_ sender: Any) {
        UnHide()
        if(CorrectAnswer == "2"){
            Answer.text = "You are Corect!!!"
        }
        else{
            Answer.text = "You are WRONGGGG!!!"
        }
    }
    @IBAction func Click_AnswerC(_ sender: Any) {
        UnHide()
        if(CorrectAnswer == "3"){
            Answer.text = "You are Corect!!!"
        }
        else{
            Answer.text = "You are WRONGGGG!!!"
        }
    }
    @IBAction func Click_AnswerD(_ sender: Any) {
        UnHide()
        if(CorrectAnswer == "4"){
            Answer.text = "You are Corect!!!"
        }
        else{
            Answer.text = "You are WRONGGGG!!!"
        }
    }
    @IBAction func Click_Next(_ sender: Any) {
        if(numberQuestion < 5){
            numberQuestion += 1
            RandomQuestion()
            Hide()
        }
        else{
            Hide()
            Answer.isHidden = false
            Answer.text = "Finished!!!"
        }

    }
    
    //


}

