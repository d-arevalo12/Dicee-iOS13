//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var diceOneImageView: UIImageView!
  @IBOutlet weak var diceTwoImageView: UIImageView!

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    diceOneImageView.image = UIImage(named: "DiceSix")
    diceTwoImageView.image = UIImage(named: "DiceTwo")
  }

  @IBAction func rollButton(_ sender: UIButton) {
    diceOneImageView.image = UIImage(named: getRandomDice())
    diceTwoImageView.image = UIImage(named: getRandomDice())
  }

  func getRandomDice() -> String {
    let randomInt: Int = Int.random(in: 1...6)
    switch randomInt {
      case 1: return "DiceOne"
      case 2: return "DiceTwo"
      case 3: return "DiceThree"
      case 4: return "DiceFour"
      case 5: return "DiceFive"
      case 6: return "DiceSix"
      default: return ""
    }
  }
}

