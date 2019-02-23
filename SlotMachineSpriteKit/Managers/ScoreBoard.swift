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
    
    public static var ScoreLabel:SKLabelNode = SKLabelNode(text: "9999")
    public static var BetLabel:SKLabelNode = SKLabelNode(text: "1")
    public static var CreditsLabel:SKLabelNode = SKLabelNode(text: "500")
    public static var WinningsLabel:SKLabelNode = SKLabelNode(text: "9999")
    public static var MsgLabel:SKLabelNode = SKLabelNode(text: "")

    
    public static var Bet1Label:SKLabelNode = SKLabelNode(text: "BET 1")
    public static var BetMaxLabel:SKLabelNode = SKLabelNode(text: "BET Max")
    public static var IncreaseBet:SKLabelNode = SKLabelNode(text: "+")
    public static var DecreaseBet:SKLabelNode = SKLabelNode(text: "-")
    public static var ResetLabel:SKLabelNode = SKLabelNode(text: "RESET")
    public static var QuitLabel:SKLabelNode = SKLabelNode(text: "QUIT")
    

    
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
    
    public static var Winnings:Int = 0 {
        didSet {
            WinningsLabel.text = String(Winnings)
        }
    }
    
    public static var Msg:String = "" {
        didSet {
            MsgLabel.text = String(Msg)
        }
    }
    /*
    public static var Bet1:Int = 1 {
        didSet {
            Bet1Label.text = String(Bet1)
        }
    }
    public static var BetMax:Int = 500 {
        didSet {
            BetMaxLabel.text = String(BetMax)
        }
    }
    */
    
    
    public static var HighScore:Int = 0 {
        didSet {
            print("A High Score has been set")
        }
    }
    
}
