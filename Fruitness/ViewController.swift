//
//  ViewController.swift
//  Fruitness
//
//  Created by Izzat Jabali on 26/9/20.
//
import UIKit

class ViewController: UIViewController

{
    
    
    var fruitCount = 0 {
        didSet {
            fruitLabel.text = "SCORE: \(fruitCount)"
        }
    }
    
    
    

    @IBOutlet weak var fruitLabel: UILabel!
    @IBOutlet var fruitButtons: [UIButton]!
    @IBOutlet weak var scoreLabel: UILabel!

    
    
    var fruitChoices = ["🍎","🍐","🍊","🍓","🍉","🍇","🍌","🍒"]
    
 
    @IBAction func optionButton1(_ sender: UIButton) {
        fruitCount += 1
        if let fruitNumber = fruitButtons.firstIndex(of: sender) {
            print("fruitNumber = \(fruitNumber)")
           // answerButtonPressed(withEmoji: "🍎", on: sender)
        } else {
            print("Wrong image choosen")
        }
        
        
    
        
        
        
     
    }
    
    func answerButtonPressed(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
        } else {
            button.setTitle("", for: UIControl.State.normal)
        }
    }
}

//}
//    var fruitNames =
//
//        Question(text: [String], answer: [String])
//        Question(text: "Pear", answer: "A"),
//            Question(text: "Carrot", answer: "B"),
//            Question(text: "Apple", answer: "C"),
//            Question(text: "Strawberry", answer: "D"),
//            Question(text: "Grapes", answer: "E"),
//            Question(text: "Watermelon", answer: "F")
//    }
//
//
//
//    //Variable to track which Questiin we are on.
//    var fruitNumber = 0
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        updateUI()
//    }
//
//    @IBAction func optionButtonPressed(_ sender: UIButton) {
//
//        var userAnswer = sender.currentTitle // True/False
//        let actualQuestion = fruitNames[fruitNumber]
//        let actualAnswer = actualQuestion.answer
//
//
//
//        switch fruitNames  {
//        case "A":
//            print("Pear")
//        case "B":
//            print("Carrot")
//        case "C":
//            print("Apple")
//        case "D":
//            print("Strawberry")
//        case "E":
//            print("Grapes")
//        case "F":
//            print("Apple")
//        case "G":
//            print("Watermelon")
//        case "H":
//            print("")
//        }
//
//
//
//        fruitNumber += 1 //
//
//
//        if fruitNumber + 1 < 5 { //End of Game
//            fruitNumber += 1
//        } else {
//
//            //open end of screen to replay <- GOES HERE!!
//        }
//        updateUI()
//
//    }
//    func updateUI() {
//        fruitLabel.text = fruitNames[fruitNumber].text
//    }
//
//
//    func updateGameState() {
//
//
//
//    }
/*
 optionButton3.setTitle(word, for: .normal)
 optionButton2?.addTarget(self, action: #selector(ViewController.buttonPressed(_:)), for: UIControl.Event.touchUpInside)
 //            optionButton3?.addTarget(self, action: #selector(ViewController.buttonPressed(_:)), for: UIControl.Event.touchUpInside)
 
 
 func animateText() -> NSAttributedString {
 let attachment:NSTextAttachment = NSTextAttachment()
 attachment.image = UIImage(named: "launch.png")
 attachment.setImageHeight(height: 20)
 let attachmentString:NSAttributedString = NSAttributedString(attachment: attachment)
 let attributedString:NSMutableAttributedString = NSMutableAttributedString(string:"This is the attributed String.")
 attributedString.append(attachmentString)
 return attributedString
 }
 */

