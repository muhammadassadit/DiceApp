//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by muhammad on 10/14/19
//  Copyright © 2019 muhammad. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    // IB - Interface Builder Outlet - reference UI element
    // diceImageView1 = CamelCase
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let diceArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
        
        // the most simplest way, looks through the dice array and checks through every possibility.
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray.randomElement()
        
    }
    
}


// MARK: More ways to display the dice

//    var leftDiceNumber = 1
//    var rightDiceNumber = 0 //where it starts

//when view loads, have certain results.
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        Comment - who.what = value (image literal - which image you want to load up.
//        Code - diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
//        Code - diceImageView1.alpha = 0.5
//        diceImageView2.image = #imageLiteral(resourceName: "DiceTwo")
//    }
//IBAction - Design to code left to right
//IBOutlet - Code to design right to left

//        diceImageView1.image = diceArray[Int.random(in: 0...5)]
//        diceImageView2.image = diceArray[Int.random(in: 0...5)]
//        if we put variable under here , then dice will only roll once var leftDiceNumber = 1
//        //putting image literal into an array(collection of items)
//        //leftDiceNumber = 1
//        print("leftDiceNumber at beginning = \(leftDiceNumber).")
//        diceImageView1.image = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ][Int.random(in: 0...5)]
//        leftDiceNumber += 1
//        //leftDiceNumber = 2
//        print("leftDiceNumber at end = \(leftDiceNumber).")
//        //        print("Button got tapped.")
//        //        diceImageView1.image = #imageLiteral(resourceName: "DiceFour")
//        //        diceImageView2.image = #imageLiteral(resourceName: "DiceFour")
//
//        //diceImageView2 backwards in an array
//        print("rightDiceNumber at beginning = \(rightDiceNumber).")
//        diceImageView2.image = [#imageLiteral(resourceName: "DiceSix"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceOne")][Int.random(in: 0...5)]
//        //rightDiceNumber = rightDiceNumber + 1 is same thing
//        rightDiceNumber += 1
//        print("rightDiceNumber at end = \(rightDiceNumber).")
//        //three dots specify a range
//        print(Int.random(in: 1...10))
