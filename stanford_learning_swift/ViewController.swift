//
//  ViewController.swift
//  stanford_learning_swift
//
//  Created by Mingxuan Leng on 2019/10/22.
//  Copyright © 2019 Leng Mingxuan. All rights reserved.
//

import UIKit

class ViewController: UIViewController/*父类*/ {
    var flipCount: Int = 0
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    
    /*方法*/
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        flipCountLabel.text = "点击: \(flipCount)"
        flipCard(withEmoji: "😄", on: sender)
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton){
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        }
        else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
/*实力变量*/
}

