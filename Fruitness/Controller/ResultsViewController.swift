//
//  ResultsViewController.swift
//  Fruitness
//
//  Created by Izzat Jabali on 18/10/20.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var fruitness = Fruitness()
    
    @IBOutlet weak var finalScoreLabel: UILabel!
    
    var finalScore: String!
    
//    override func prepare(for: UIStoryboardSegue, sender: Any?) {
//        func viewWillAppear(_ animated: Bool) {
//
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        finalScoreLabel.text = finalScore
    
//            if finalScore != nil {
//                finalScoreLabel.text = "FINALSCORE:\(String(describing: Int(finalScore!)))"
//
            //ghnbv}
        }
    }

