//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Jérôme Desseaux on 24/04/2019.
//  Copyright © 2019 Jérôme Desseaux. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballImage: UIImageView!
    
    var randomIndex : Int = 0
    let balls = ["ball1","ball2","ball3","ball4","ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateBallResponse()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        updateBallResponse()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBallResponse()
    }
    
    func updateBallResponse(){
        randomIndex = Int.random(in: 0...4)
        ballImage.image = UIImage(named: balls[randomIndex])
    }
    
}

