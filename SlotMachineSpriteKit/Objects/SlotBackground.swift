//
//  SlotBackground.swift
//  SlotMachineSpriteKit
//
//  Created by Sherlyn Lobo on 2019-02-21.
//  Copyright © 2019 Sherlyn Lobo. All rights reserved.
//

import Foundation
import SpriteKit
import GameplayKit

class SlotBackground : GameObject {
    // Initializers
    init() {
        // initialize the object with an image
        super.init(imageString: "background", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func Start() {
        
       self.verticalSpeed = 10.0
        self.Reset()
    }
    /*
    override func Reset() {
        self.zPosition = 0
        self.position.y = 3652
    }
    
    
    override func CheckBounds() {
        if(self.position.y <= -2108) {
            self.Reset()
        }
    }
    
    override func Update() {
        self.position.y -= self.verticalSpeed!
        self.CheckBounds()
    }
    
    */
    
}
