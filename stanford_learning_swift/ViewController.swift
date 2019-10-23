//
//  ViewController.swift
//  stanford_learning_swift
//
//  Created by Mingxuan Leng on 2019/10/22.
//  Copyright © 2019 Leng Mingxuan. All rights reserved.
//

import UIKit

class ViewController: UIViewController/*父类*/ {
    var flipCount: Int = 0{
        didSet{//'didset‘可以让此属性在用到他的时候执行didset内的指令
            flipCountLabel.text = "点击: \(flipCount)"//每次‘flipCount’变量的数据发生改变时都会执行Label的内容加一
        }
        
    }
    
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices: Array<String> = ["😂","😁","😂","😁"]
    
    /*方法*/
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender){
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        }
        else{
            print("Choose card was not in cardButtons")
        }
        
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

