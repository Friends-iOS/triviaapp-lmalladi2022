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

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBAction func trueButton(_ sender: UIButton) {
        sender.alpha = 0.5
               
        //delay of the opacity
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
        sender.alpha = 1.0
            
        }
    }
    
    @IBAction func falseButton(_ sender: UIButton) {
       sender.alpha = 0.5
               
        //delay of the opacity
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
        sender.alpha = 1.0
        }
            
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
        
    struct Question {
        
        var text: String
        var answer: String
        
        init(q: String, a: String){
            text = q;
            answer = a;
        }

    }
        
        
    struct QuizBrain{
        let quiz = [Question(q: "Women got the right to vote in 1920", a: "TRUE"),
                    Question(q: "There are women (like in Iran) that are legally not allowed to enter sports stadiums?", a: "TRUE"),
                    Question(q: "There are 2 billion women in the world.", a: "FALSE"),
                    Question(q: "There have been no woman presidents in the history of the US.", a: "TRUE"),
                    Question(q: "Around 1 in 10 (120 million) girls worldwide have experienced sexual violence at some point in their lives.", a: "TRUE"),
                    Question(q: "Women are less likely to work in informal employment than men.", a: "FALSE"),
                    Question(q: "April 14th is International Women’s Day.", a: "FALSE"),
                    Question(q: "Elizabeth Cady Stanton, Susan B. Anthony, and Alice Paul are three significant figures in womens’ suffrage.", a: "TRUE"),
                    Question(q: "The first women’s rights convention in the US was in Seneca Falls.", a: "TRUE"),
                    Question(q: "Title IX was passed in 1972. This was a law that requires schools that receive money from the federal government to give their female students the same opportunities to play sports as male students.", a: "TRUE"),
                    Question(q: "More men experience domestic violence than women. ", a: "FALSE"),
                    Question(q: "A top-tier women’s sports player could earn as little as 38 percent of what a top-tier men’s player makes in a year, a gap of $164,320. ", a: "TRUE"),]
        
        var questionNumber: Int
        
        var totalQuestions: Int
        
        var scoreRight: Int
        
        var scoreWrong: Int
        
        var endFlag: Int
            
        }
        
        func checkAnswer(rightAnswers: String){
        //FUNCTION - checking the users answer
            //FORM: func function_name(user's answer (ie a String) -> returns a true or false
            //conditional statement that will return true if user's answer matches, false if not
        }

        func getQuestionText(questionNumber: String){
        //FUNCTION - retrieving the questions text
            //FORM: func functions_name() -> returns question (ie String)
        }
        
        func getProgress(totalQuestion: Float){
        //FUNCTION - Retrieves user's progress (question number / total number of questions)
            //FORM: func functions_name() -> returns a number (ie Float)
        }
        
        func getScore(scoreRight: Float){
        //FUNCTION - retrieves user's score (score right / total number of answers)
            //FORM: func functions_name -> This could a String ("this is your score...") or could just be a number (ie Float)
        }
        
      // mutating func nextQuestion()

        //FUNCTION - updates the variable that is acting as our array index (where in the index are we currently). When the user answers a question, we want to move to the next question
            //FORM: mutating func function_name()
        
        
        
        
        
        
      
        // THIS FUNCTION ALWAYS RUNS WHEN THE APP LOADS
        //VERY SIMILIAR TO SETUP() IN PROCESSING
        //THIS IS WHERE WE WILL CALL/ACTIVATE OUR CUSTOM FUNCTION, UPDATEUI()
        //UPDATEUI WILL SETUP EVERYTHING FOR THE REST OF THE CODE TO WORK
    }
    
    //UPDATEUI WILL UPDATE ANY ON SCREEN ELEMENTS AS WELL AS SETUP EVERYTHING FOR OUR FIRST PLAY THROUGH
    @objc func updateUI(){
        
        //CLEAR ANY COLOR CHANGES (FOR INSTANCE, IF THE COLOR CHANGES WHEN USER GETS QUESTION RIGHT/WRONG, WE WANT THE COLOR TO CHANGE BACK AFTER THEY ANSWER THE QUESTION
        
        //UPDATE THE PROGRESS BAR
        
        //UPDATE THE QUESTION THAT APPEARS ON SCREEN
        
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


}

