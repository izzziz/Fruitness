//
//  ViewController.swift
//  Fruitness
//
//  Created by Izzat Jabali on 26/9/20.
//

import UIKit

class ViewController: UIViewController {
    lazy var game = Fruitness(numberOfFruitButton: (fruitButtons.count + 1) / 2)
    
    var fruitCount = 0 { didSet {
        fruitLabel.text = "SCORE: \(fruitCount)" }
    }
    
    @IBOutlet weak var fruitLabel: UILabel!
    @IBOutlet var fruitButtons: [UIButton]! 
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var playAgain: UIButton!
    
    
    let fruitNames = [ ["APPLE":"🍎"],["PEAR":"🍐"],["ORANGE":"🍊"],["STRAWBERRY":"🍓"],["WATERMELON":"🍉"],["GRAPES":"🍇"],["BANANA":"🍌"],["CHERRY":"🍒"]
    ]
//    let fruitOptions = ["🍎","🍐","🍊","🍓","🍉","🍇","🍌","🍒"]
    var fruitNumber = 0
    
    // var fruit = [Int:String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        updateUI()
    }
    
    @IBAction func optionButton1(_ sender: UIButton) {
        
//        let userAnswer = sender.currentTitle // TRUE, FALSE
//        let actualAnswer = fruitNames[fruitNumber][1]
//
//        switch fruitNames {
//        case 0:
//            true
//        default:
//            <#code#>
//        }
//
//
//
//        if userAnswer == actualAnswer {
//            print("")
//        } else {
//            print("")
//        }
//
//
        
        fruitNumber += 1
        updateUI()
        
    }
    
    //        fruitCount += 1
    //        if fruitButtons.firstIndex(of: sender) != nil {
    //  //          game.chooseButton(at: fruitNumber)
    //            updateViewFromModel()
    //        } else {
    //            print("Wrong image choosen")
    //        }
    //
    //    }
    //
    //}
    
    //var game = Fruitness(numberOfFruitButton: fruitButtons.count / 2)
    
    //
    //func fruit(for button: Button) -> String {
    //
    //    updateViewFromModel()
    //    if fruit[button.identifier] == nil, fruitOptions.count > 0 {
    //        //random index //Convert type in swift
    //        let randomIndex = Int(arc4random_uniform(UInt32(fruitOptions.count)))
    //        fruit[button.identifier] = fruitOptions.remove(at: randomIndex)
    //    }
    //
    //
    //    return fruit[button.identifier] ?? "?"
    //}
    
    //Update our View from the Model
    func updateUI() {
        
     //   fruitLabel.text = fruitNames[fruitNumber]
        
    }
    
}
//    for index in fruitOptions.indices {
//        let button = fruitOptions[index]
//
//    var fruitLabel = game.buttons[index]



//            if button.answerButtonPressed {
//                button.setTitle(fruit(for button:), for: UIControl.State.normal)
//            } else {
//                button.setTitle("", for: UIControl.State.normal)
//                button
//            }
//    func answerButtonPressed(withEmoji emoji: String, on button: UIButton) {
//        if button.currentTitle == emoji {
//            button.setTitle("", for: UIControl.State.normal)
//        } else {
//
//        }
//    }



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





