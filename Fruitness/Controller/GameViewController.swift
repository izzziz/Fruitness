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
    
    var fruitness = Fruitness()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        
    }
    
    @IBAction func replayButton(_ sender: UIButton) {
        
        fruitness.restartGame()
        updateUI()
        //  self.dismiss(animated: false, completion: nil)
        
    }
    @IBAction func touchButton(_ sender: UIButton)  {
        
        let userAnswer = sender.currentTitle!
        let userGotItRight = fruitness.checkAnswer(userAnswer: userAnswer)
        
        //        if let fruitButton = fruitButtons.firstIndex(of: sender) {
        //            fruitness.fruitOptions.indices
        //         fruitButtons.firstIndex(of: sender)
        //              fruitness.fruitNumber(at: fruitButton)
        //            updateUI()
        //
        
        if userGotItRight {
            
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
            
            
        }
        
        
        
        fruitness.nextFruit()
        
        
        
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo:nil, repeats: false)
        
    }
    
    @objc func updateUI() {
        
        optionButton0.backgroundColor = UIColor.clear
        optionButton1.backgroundColor = UIColor.clear
        optionButton2.backgroundColor = UIColor.clear
        optionButton3.backgroundColor = UIColor.clear
        optionButton4.backgroundColor = UIColor.clear
        optionButton5.backgroundColor = UIColor.clear
        optionButton6.backgroundColor = UIColor.clear
        optionButton7.backgroundColor = UIColor.clear
        optionButton8.backgroundColor = UIColor.clear
        
        
        
        
    }
    
}
