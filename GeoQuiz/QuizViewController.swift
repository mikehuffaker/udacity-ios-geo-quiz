//
//  QuizViewController.swift
//  GeoQuiz
//
//  Created by Jarrod Parkes on 6/21/16.
//  Copyright © 2016 Udacity. All rights reserved.
//

import UIKit
import AVFoundation

// MARK: - QuizViewController: UIViewController

class QuizViewController: UIViewController {
  
    // MARK: Outlets
    
    @IBOutlet weak var flagButton1: UIButton!
    @IBOutlet weak var flagButton2: UIButton!
    @IBOutlet weak var flagButton3: UIButton!
    @IBOutlet weak var repeatPhraseButton: UIButton!
  
    // MARK: Properties
    
    var languageChoices = [Country]()
    var lastRandomLanguageID = -1
    var selectedRow = -1
    var correctButtonTag = -1
    var currentState: QuizState = .NoQuestionUpYet
    var spokenText = ""
    var bcpCode = ""
    let speechSynth = AVSpeechSynthesizer()
    var score = 0
    
    // MARK: Actions
    
    // This function is called when user presses a flag button.
    @IBAction func flagButtonPressed(sender: UIButton)
    {
        var msgText = ""
        // MHH - If statement added to complete Udacity GeoCode project
        if sender.tag == correctButtonTag
        {
            score += 1
            msgText = "Right on! \n Score is: " + String(score)
            displayAlert( "Correct", messageText: msgText )
        }
        else
        {
            score -= 1
            msgText = "Nope, try again! \n Score is: " + String(score)
            displayAlert( "Incorrect", messageText: msgText )
        }

    }
}