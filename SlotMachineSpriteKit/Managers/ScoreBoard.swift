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
    
    public static var ScoreLabel:SKLabelNode = SKLabelNode(text: "Score: 99999")
    public static var LivesLabel:SKLabelNode = SKLabelNode(text: "Lives: 99")
    
    
    // public static variables
    public static var Score:Int = 0 {
        didSet {
            ScoreLabel.text = "Score: " + String(Score)
        }
    }
    
    public static var Lives:Int = 5 {
        didSet {
            LivesLabel.text = "Lives: " + String(Lives)
        }
    }
    
    public static var HighScore:Int = 0 {
        didSet {
            print("A High Score has been set")
        }
    }
    
}
