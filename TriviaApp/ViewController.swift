//
//  ViewController.swift
//  TriviaApp
//
//  Created by Adam Jackrel on 4/8/20.
//  Copyright © 2020 Adam Jackrel. All rights reserved.
//

import UIKit
import AVFoundation
import Foundation

class ViewController: UIViewController {
   var myQuizBrain = QuizBrain()
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var trueColor: UIButton!
    
    @IBOutlet weak var falseColor: UIButton!
    
    @IBOutlet weak var `false`: UIButton!
    
    @IBOutlet weak var `true`: UIButton!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    var timer = Timer()
    
    
    @IBAction func trueButton(_ sender: UIButton) {
        sender.alpha = 0.5
               
        //delay of the opacity
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
        sender.alpha = 1.0
            
        }
    }
    //no matter what button pressed falsebutton function called
    @IBAction func falseButton(_ sender: UIButton) {
        
       
        
        
        
        //IBACTION FUNCTION (TRUE AND FALSE BUTTONS SHOULD BE LINKED TO THIS FUNCTION)
          
        //STORE THE CURRENTTITLE OF THE BUTTON IN A VARIABLE
          
        //CHECK THE ANSWER USING QUIZBRAIN
        var userAnswer = sender.currentTitle!
        
       
        //CONDITIONAL STATEMENT THAT WILL:
        if(myQuizBrain.checkAnswer(userAnswer: userAnswer)){
            
            //CHANGE THE BUTTONS COLOR DEPENDING IF THEY GOT IT RIGHT OR WRONG
            sender.backgroundColor = UIColor.green
            
            
         //UPDATE THE SCORE VARIABLES
                    
        //INFORM THE USER IF THEY GOT IT RIGHT OR WRONG
          
        //GO TO THE NEXT QUESTION
            
        } //end of if statement
            
        else{
            sender.backgroundColor = UIColor.red
            
        } //end of else
        
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(self.updateUI), userInfo: nil, repeats: false)
        
            
    }
    
    @IBAction func extraButton(_ sender: UIButton) {
        sender.alpha = 0.5
               
        //delay of the opacity
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
        sender.alpha = 1.0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // THIS FUNCTION ALWAYS RUNS WHEN THE APP LOADS
        //VERY SIMILIAR TO SETUP() IN PROCESSING
        //THIS IS WHERE WE WILL CALL/ACTIVATE OUR CUSTOM FUNCTION, UPDATEUI()
        //UPDATEUI WILL SETUP EVERYTHING FOR THE REST OF THE CODE TO WORK
    } // view did load
    
    //UPDATEUI WILL UPDATE ANY ON SCREEN ELEMENTS AS WELL AS SETUP EVERYTHING FOR OUR FIRST PLAY THROUGH
    @objc func updateUI(){
        
        //CLEAR ANY COLOR CHANGES (FOR INSTANCE, IF THE COLOR CHANGES WHEN USER GETS QUESTION RIGHT/WRONG, WE WANT THE COLOR TO CHANGE BACK AFTER THEY ANSWER THE QUESTION
        trueColor.backgroundColor = UIColor.clear
        falseColor.backgroundColor = UIColor.clear
        
        
        
        //UPDATE THE PROGRESS BAR
        
        //UPDATE THE QUESTION THAT APPEARS ON SCREEN
        questionLabel.text = myQuizBrain.getQuestionText()
        
        
        //CONDITIONAL THAT WILL CHECK IF THE QUIZ IS OVER. SOME KIND ON SCREEN FEEDBACK SHOULD HAPPEN AT THIS POINT. DISPLAY SCORE, CONGRATULATE THE PLAYER, ETC
        
        
    }
    
    //IBACTION FUNCTION (TRUE AND FALSE BUTTONS SHOULD BE LINKED TO THIS FUNCTION)
    
            //STORE THE CURRENTTITLE OF THE BUTTON IN A VARIABLE
    
            //CHECK THE ANSWER USING QUIZBRAIN
    
            //CONDITIONAL STATEMENT THAT WILL:
                //CHANGE THE BUTTONS COLOR DEPENDING IF THEY GOT IT RIGHT OR WRONG
                //UPDATE THE SCORE VARIABLES
                //INFORM THE USER IF THEY GOT IT RIGHT OR WRONG
    
            //GO TO THE NEXT QUESTION


} //view controller

