//
//  ViewController.swift
//  Fruitness
//
//  Created by Izzat Jabali on 26/9/20.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet private weak var fruitLabel: UILabel!
    
    @IBOutlet private weak var scoreLabel: UILabel!
    
    @IBOutlet weak var replayGame: UIButton!
    
    
    @IBOutlet weak var optionButton0: UIButton!
    @IBOutlet weak var optionButton1: UIButton!
    @IBOutlet weak var optionButton2: UIButton!
    @IBOutlet weak var optionButton3: UIButton!
    @IBOutlet weak var optionButton4: UIButton!
    @IBOutlet weak var optionButton5: UIButton!
    @IBOutlet weak var optionButton6: UIButton!
    @IBOutlet weak var optionButton7: UIButton!
    @IBOutlet weak var optionButton8: UIButton!
    
    
    @IBOutlet private var fruitButtons: [UIButton]!
    
    var score = 0
    var fruitness = Fruitness()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }
    @IBAction func replayGame(_ sender: UIButton) {
        fruitness.restartGame() //Calling restart
        updateUI()
        
        
    }
    @IBAction func touchButton(_ sender: UIButton)  {
        
        let userAnswer = sender.currentTitle!
        
        //The userGotItRight is = to the checkAnswer function which goes through the fruitOptions array to make sure the answer is corrct. T/F
        let userGotItRight = checkAnswer(userAnswer: userAnswer)
        
        if userGotItRight {
            //Depending if the user got the answer correct the button turns green/red
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        nextFruit() //Calling the next Fruit untill all the fruit items have been displayed.
        
        //This timer is responsible for the UIColors green, red and clear. Without this timer the color drags onto the next fruit.
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo:nil, repeats: false)
        
    }
    
    //    This check answer method needs an input to work. The input is the answer the user-choose (String).
    func checkAnswer(userAnswer: String) -> Bool {
        
        //        Checks if the user got the answer correct. T/F
        if userAnswer == fruitness.fruitOptions[fruitness.fruitNumber].fruit {
            fruitness.score += 1 //We increase the value of score when we get the answer right.
            //   fruitness.finalScorez = fruitness.score
            
            return true
        } else {
            return false
            
        }
    }
    //Checks to make sure the eveytime it hits 0 it will shuffle.
    func nextFruit() {
        if fruitness.fruitNumber == 0 {
            fruitness.fruitOptions.shuffle()
            
        }
        // print(fruitness.fruitOptions[fruitness.fruitNumber]) //Only gets printed in the consol
        
        if fruitness.fruitNumber + 1 < fruitness.fruitOptions.count {
            fruitness.fruitNumber += 1
        } else {
            self.performSegue(withIdentifier: "goToResultsVC", sender: self) //To call Segue
        }
    }
    
    //Connecting and controlling oF the Segue and from GameView COntroller -> Results view controller.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResultsVC" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.finalScore = scoreLabel.text //Printing the final score at the end.
        }
     
    }
    
    @objc func updateUI() {
        
        //Controlls the background. Clearing ability between T/F answers.
        optionButton0.backgroundColor = UIColor.clear
        optionButton1.backgroundColor = UIColor.clear
        optionButton2.backgroundColor = UIColor.clear
        optionButton3.backgroundColor = UIColor.clear
        optionButton4.backgroundColor = UIColor.clear
        optionButton5.backgroundColor = UIColor.clear
        optionButton6.backgroundColor = UIColor.clear
        optionButton7.backgroundColor = UIColor.clear
        optionButton8.backgroundColor = UIColor.clear
        
        //The fruit name available that the user needs to match.
        fruitLabel.text = fruitness.getFruitText()
        
        //Displaying the progress of the user till they reach the end.
        progressBar.progress = fruitness.getProgress()
        
        //Displaying the score at all times
        scoreLabel.text = "SCORE: \(fruitness.score)"
        
    }
    
    
}
