//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Anthony Ruiz on 4/27/18.
//  Copyright © 2018 Jakaboy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   @IBOutlet weak var ballImageView: UIImageView!
   var randomAnswer : Int = 0
   
   override func viewDidLoad() {
      super.viewDidLoad()
      updateAsnwer()
      // Do any additional setup after loading the view, typically from a nib.
   }

   override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      // Dispose of any resources that can be recreated.
   }

   @IBAction func helpButton(_ sender: UIButton) {
      updateAsnwer()
   }
   
   func updateAsnwer() {
      randomAnswer = Int(arc4random_uniform(5))
      ballImageView.image = UIImage(named: "ball" + String(randomAnswer+1))
   }
   
   override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
      updateAsnwer()
   }
   
}

