//
//  ViewController.swift
//  Magic8ball
//
//  Created by Christian Jimenez on 9/11/18.
//  Copyright © 2018 Christian Jimenez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
   
    
    var randomBallNumber: Int = 0
    var previousNum: Int = 0
    
    let array = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomBallNumber = Int.random(in: 0 ... 4)
        imageView.image = UIImage(named: array[randomBallNumber])
        print(randomBallNumber)
        previousNum = randomBallNumber
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        newBallImage()
    }
    
    
    func newBallImage() {
        randomBallNumber = Int.random(in: 0 ... 4)
        print(previousNum)
        
        while previousNum == randomBallNumber {
            randomBallNumber = Int.random(in: 0 ... 4)
        }
       
        imageView.image = UIImage(named: array[randomBallNumber])
        print(randomBallNumber)
        
        
        previousNum = randomBallNumber
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }

}

