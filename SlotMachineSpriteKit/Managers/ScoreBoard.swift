//
//  ScoreBoard.swift
//  SlotMachineSpriteKit
//
//  Created by Sherlyn Lobo on 2019-02-21.
//  Copyright © 2019 Sherlyn Lobo. All rights reserved.
//

import Foundation
import SpriteKit
import UIKit

class ScoreBoard {
    
    public static var ScoreLabel:SKLabelNode = SKLabelNode(text: "Score: 9999")
    public static var BetLabel:SKLabelNode = SKLabelNode(text: "Bets: 1")
    public static var CreditsLabel:SKLabelNode = SKLabelNode(text: "Credits: 500")
    public static var Bet1Label:SKLabelNode = SKLabelNode(text: "BET 1")
    public static var BetMaxLabel:SKLabelNode = SKLabelNode(text: "BET Max")

    
    
    // public static variables
    public static var Score:Int = 0 {
        didSet {
            ScoreLabel.text = String(Score)
        }
    }
    
    public static var Bet:Int = 1 {
        didSet {
            BetLabel.text = String(Bet)
        }
    }
    
    public static var Credits:Int = 500 {
        didSet {
            CreditsLabel.text = String(Credits)
        }
    }
    
    public static var Bet1:Int = 1 {
        didSet {
            Bet1Label.text = String(Bet1)
        }
    }
    public static var BetMax:Int = 100 {
        didSet {
            BetMaxLabel.text = String(BetMax)
        }
    }
    
    
    
    public static var HighScore:Int = 0 {
        didSet {
            print("A High Score has been set")
        }
    }
    
}
