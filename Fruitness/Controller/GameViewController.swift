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
    
    @IBOutlet private weak var playAgain: UIButton!
    
    @IBOutlet private var fruitButtons: [UIButton]!
    
    var fruitness = Fruitness()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        updateUI()
        
    }
  
    @IBAction func replayGame(_ sender: Any) {
       // self.presentingViewController?.dismiss(animated: false, completion: nil)
       
    }
    
   
    
    @IBAction func touchButton(_ sender: UIButton)  {
        
        let userAnswer = sender.currentTitle!
        let userGotItRight = fruitness.checkAnswer(userAnswer: userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
            
            
        }
        
        fruitness.nextFruit()
        
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo:nil, repeats: false)
        
        
        
    }
    
   
    @objc func updateUI() {
        
        // fruitness.fruit.shuffle()
        //fruitButtons = fruitness.fruitOnButton()
        
        fruitLabel.text = fruitness.getFruitText()
        progressBar.progress = fruitness.getProgress()
        scoreLabel.text = "SCORE: \(fruitness.getScore())"
        
    }
   
    
        
    
}
    
