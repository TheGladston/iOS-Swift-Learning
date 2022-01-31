//
//  ViewController.swift
//  Dicee-iOS13


import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceImageView3: UIImageView!
    @IBOutlet weak var diceImageView4: UIImageView!
    @IBOutlet weak var diceImageView5: UIImageView!
    @IBOutlet weak var diceImageView6: UIImageView!
    
    var letDiceNumber = 0
    var letPutDice = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        diceImageView2.alpha = 0
        diceImageView3.alpha = 0
        diceImageView4.alpha = 0
        diceImageView5.alpha = 0
        diceImageView6.alpha = 0
    
        // Do any additional setup after loading the view.
    }

    @IBAction func rollButtonPress(_ sender: UIButton) {
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        diceImageView1.image = diceArray[Int.random(in: 0...5)]
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
        diceImageView3.image = diceArray[Int.random(in: 0...5)]
        diceImageView4.image = diceArray[Int.random(in: 0...5)]
        diceImageView5.image = diceArray[Int.random(in: 0...5)]
        diceImageView6.image = diceArray.randomElement()
    }
    
    @IBAction func plusOneMoreDice(_ sender: UIButton) {
        if letPutDice == 0 {
            diceImageView2.alpha = 1
            letPutDice = letPutDice + 1
        }else if letPutDice == 1 {
            diceImageView3.alpha = 1
            letPutDice = letPutDice + 1
        }else if letPutDice == 2 {
            diceImageView4.alpha = 1
            letPutDice = letPutDice + 1
        }else if letPutDice == 3 {
            diceImageView5.alpha = 1
            letPutDice = letPutDice + 1
        }else if letPutDice == 4 {
            diceImageView6.alpha = 1
            letPutDice = letPutDice + 1
        }

    }
    
    @IBAction func minusADice(_ sender: UIButton) {
        if letPutDice == 1 {
            diceImageView2.alpha = 0
            letPutDice = letPutDice - 1
        }else if letPutDice == 2 {
            diceImageView3.alpha = 0
            letPutDice = letPutDice - 1
        }else if letPutDice == 3 {
            diceImageView4.alpha = 0
            letPutDice = letPutDice - 1
        }else if letPutDice == 4 {
            diceImageView5.alpha = 0
            letPutDice = letPutDice - 1
        }else if letPutDice == 5 {
            diceImageView6.alpha = 0
            letPutDice = letPutDice - 1
        }
    }
    
}
