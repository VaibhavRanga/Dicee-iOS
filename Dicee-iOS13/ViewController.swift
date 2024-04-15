//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    let arrayOfDiceImages: [UIImage] = [.diceOne, .diceTwo, .diceThree, .diceFour, .diceFive, .diceSix]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        randomizeImages()
        
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        randomizeImages()
    }
    
    func randomizeImages() {
        let image1 = arrayOfDiceImages.randomElement()
        let image2 = arrayOfDiceImages.randomElement()
        
        diceImageView1.image = image1
        diceImageView2.image = image2
    }
}
