//
//  ViewController.swift
//  Bowling Scores
//
//  Created by Daniel Salmond on 9/28/18.
//  Copyright © 2018 Daniel Salmond. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var game1: UITextField!
    @IBOutlet weak var game2: UITextField!
    @IBOutlet weak var game3: UITextField!
    
    @IBOutlet weak var series: UILabel!
    @IBOutlet weak var average: UILabel!
    @IBOutlet weak var high: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculate(_ sender: UIButton) {
        
        self.game1.resignFirstResponder()
        self.game2.resignFirstResponder()
        self.game3.resignFirstResponder()
        
        //Converting to ints
        Int(self.game1.text!)
        Int(self.game2.text!)
        Int(self.game3.text!)
        
        //assign temp variable (actually constant) g1 to permanent variable game1 if it exists. Otherwise, game1 is zero.
        var game1 = 0
        if let g1 = Int(self.game1.text!) {
            game1 = g1
        }
        
        var game2 = 0
        if let g2 = Int(self.game2.text!) {
            game2 = g2
        }
        
        var game3 = 0
        if let g3 = Int(self.game3.text!) {
            game3 = g3
        }
        
        
        //Series: game1 + game2 + game3
        let series = game1 + game2 + game3
        
        //Converting series to strings and sets the series field
        self.series.text = "\(series)"
        
        
        //Average: series devided by the number of games played, using integer arithmetic. If a game is zero, it is not counted as a game.
        let average = series / 3
        
        //Converting series to strings and sets the series field
        self.average.text = "\(average)"
        
        //High: the highest of game1, game2, and game3
        let high = max(max(game1, game2), game3)
        
        //Converting series to strings and sets the series field
        self.high.text = "\(high)"
        
        
        _ = 0
    }
    
}

