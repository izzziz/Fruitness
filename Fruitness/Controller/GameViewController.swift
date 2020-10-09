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
    var finishedTheGame = false
    
    @IBAction func replayGame(_ sender: UIButton) {
        
//        func replayGame() -> Bool {
//            if fruitness.i == finishedTheGame {
//                finishedTheGame.description
//                return true
//            } else {
//                return false
//            }
//        }
        
    }
    
    @IBAction func touchButton(_ sender: UIButton)  {
        
        //        if let fruitNumber = fruitness.index(of:sender) {
        //            fruitness.fruits
        //        }
        //
        //        func changeFruitButton() {
        //            for index in fruitButtons.indices {
        //                let button = fruitButtons[index]
        //                let fruit = fruitness.fruit[index]
        //                if fruit.isPressed {
        //                    button.setTitle("" , for: UIControl.State.normal)
        //                    button.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        //                } else {
        //                    button.setTitle("" , for: UIControl.State.normal)
        //                    button.backgroundColor = button.isMatched ? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0) : #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        //                }
        //            }
        //        }
        //
        //        var emjoiChoices = ["🍏":"APPLE","🍎":"RedAPPLE","🍐":"PEAR"]
        //
        //        func emjoi(for button: Fruit) -> String {
        //            if emjoi[button.identifier] == nil, emjoiChoices.count > 0 {
        //                    let randomIndex = Int(arc4random_uniform(UInt32(emjoiChoices.count)))
        //                    emjoi[button.identifier] = emjoiChoices.remove(at: randomIndex)
        //                }
        //            return emjoi[button.identifier] ?? "?"
        //            }
        //        }
        //
        
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
    
    //    func fruitOnButton(withEmjoi:String , on button: UIButton) {
    //        if button.currentTitle == emjoi {
    //            button.setTitle("", for: UIControl.State.normal)
    //        } else {
    //            button.setTitle(emjoi, for: UIControl.State.normal)
    //        }
    //    }
    
    @objc func updateUI() {
        
        //fruitButtons = fruitness.fruitOnButton()
        playAgain.backgroundColor = UIColor.clear
        fruitLabel.text = fruitness.getFruitText()
        progressBar.progress = fruitness.getProgress()
        scoreLabel.text = "SCORE: \(fruitness.getScore())"
        
    }
    
}


