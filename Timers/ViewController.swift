//
//  ViewController.swift
//  Timers
//
//  Created by MAC-DIN-002 on 20/05/2019.
//  Copyright © 2019 MAC-DIN-002. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timerLabel: UILabel!
    
    var timer = Timer()
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
         counter = 10
        timerLabel.text = String(counter)
        /*timeInterval : 1 -> la fonction sera lancer tt les secondes*/
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.timerFunction), userInfo: nil, repeats: true)
    }
    
    @objc func timerFunction (){
        //tous ce qui est dans cette fonction sera executer pdt que le timer tourne
        print("timer running")
        counter = counter-1
        timerLabel.text = String(counter)
       
        
        if counter == 0 {
            timer.invalidate()
            timerLabel.text = "Time is done!"
        }
    }

}

