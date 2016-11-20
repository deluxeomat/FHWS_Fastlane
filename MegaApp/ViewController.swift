//
//  ViewController.swift
//  MegaApp
//
//  Created by Michael on 18.11.16.
//  Copyright © 2016 Michael Kilian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var image: UIImageView!
    
    var myPi: Double!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
        self.myPi = Calc.getPi()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        image.layer.add(getRotationAnimation(), forKey: nil)
        
    }
    
    func getRotationAnimation() -> CABasicAnimation {
        let rotation = CABasicAnimation(keyPath: "transform.rotation")
        rotation.fromValue = 0.0
        rotation.toValue = self.myPi
        rotation.duration = 1.5
        
        return rotation
    }


}










