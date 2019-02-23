//
//  Spin.swift
//  SlotMachineSpriteKit
//
//  Created by Sherlyn Lobo on 2019-02-21.
//  Copyright © 2019 Sherlyn Lobo. All rights reserved.
//

import Foundation
import SpriteKit
import GameplayKit

class Spin : GameObject {
    

    // Initializers
    init() {
        // initialize the object with an image
        super.init(imageString: "spinButton", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func Start() {
        
        //self.verticalSpeed = 10.0
        //self.Reset()
    }
    
}
