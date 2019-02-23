//
//  Bet1.swift
//  SlotMachineSpriteKit
//
//  Created by Sherlyn Lobo on 2019-02-21.
//  Copyright © 2019 Sherlyn Lobo. All rights reserved.
//

import Foundation
import SpriteKit
import GameplayKit

class Bet1 : GameObject {
    
    // Initializers
    init() {
        // initialize the object with an image
        super.init(imageString: "bet1Button", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func Start() {
       // zPosition = 0
        //position.y = -548.728
       // position.x = -224.297

                        }
}
