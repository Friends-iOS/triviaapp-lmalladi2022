//
//  File.swift
//  TriviaApp
//
//  Created by Adam Jackrel on 4/8/20.
//  Copyright © 2020 Adam Jackrel. All rights reserved.
//

import Foundation

//begin struct

//array of Question structs

//variable for our array index
//variable for number of right answers
//variable for number of wrong answers
//variable to act as a flag if the user reaches the end of the quiz

//FUNCTION - checking the users answer
    //FORM: func function_name(user's answer (ie a String) -> returns a true or false
    //conditional statement that will return true if user's answer matches, false if not

//FUNCTION - retrieving the questions text
    //FORM: func functions_name() -> returns question (ie String)

//FUNCTION - Retrieves user's progress (question number / total number of questions)
    //FORM: func functions_name() -> returns a number (ie Float)

//FUNCTION - retrieves user's score (score right / total number of answers)
    //FORM: func functions_name -> This could a String ("this is your score...") or could just be a number (ie Float)

//FUNCTION - updates the variable that is acting as our array index (where in the index are we currently). When the user answers a question, we want to move to the next question
    //FORM: mutating func function_name()


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
                  Question(q: "A top-tier women’s sports player could earn as little as 38 percent of what a top-tier men’s player makes in a year, a gap of $164,320. ", a: "TRUE")]
      
      var questionNumber: Int = 0
      
      var totalQuestions: Int = 0
      
      var scoreRight: Int = 0
      
      var scoreWrong: Int = 0
      
      var endFlag: Int = 0
          
    
      
      //FUNCTION - checking the users answer
      //FORM: func function_name(user's answer (ie a String) -> returns a true or false
      //conditional statement that will return true if user's answer matches, false if not
      
      func checkAnswer(userAnswer: String) -> Bool{
        if(userAnswer == quiz[questionNumber].answer){
            return true
        }
        else {
            return false
        }
     
      }
    
     //FUNCTION - retrieving the questions text
     //FORM: func functions_name() -> returns question (ie String)

      func getQuestionText() -> String{
        return quiz[questionNumber].text
        
      }
      
     //FUNCTION - Retrieves user's progress (question number / total number of questions)
     //FORM: func functions_name() -> returns a number (ie Float)
    
    func getProgress() -> Float{
      
        return Float(questionNumber) / Float(quiz.count)
        
        
    
      }
      
    //FUNCTION - retrieves user's score (score right / total number of answers)
            //FORM: func functions_name -> This could a String ("this is your score...") or could just be a number (ie Float)
    
    func getScore() -> String{

        return String(scoreRight / quiz.count)
    
      }
      
    // mutating func nextQuestion()

      //FUNCTION - updates the variable that is acting as our array index (where in the index are we currently). When the user answers a question, we want to move to the next question
          //FORM: mutating func function_name()
    
    mutating func nextQuestion(){
        questionNumber += 1
        //same as saying questionNumber = questionNumber + 1
        
    }
    
}
      ///l
      
