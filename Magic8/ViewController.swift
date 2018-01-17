//
//  ViewController.swift
//  Magic8
//
//  Created by Ricardo Ramirez on 9/24/17.
//  Copyright © 2017 Ricardo Ramirez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageBall1: UIImageView!
    
    var randomIndex:Int = 0
    
    var questionArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        randomizer()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func preguntarPressed(_ sender: Any) {
        randomizer()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        randomizer()
    }
    
    func randomizer (){
        randomIndex = Int(arc4random_uniform(4))
        imageBall1.image = UIImage(named: questionArray[randomIndex])
    }
}

