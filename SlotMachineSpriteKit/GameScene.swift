//
//  GameScene.swift
//  SlotMachineSpriteKit
//
//  Created by Sherlyn Lobo on 2019-02-21.
//  Copyright © 2019 Sherlyn Lobo. All rights reserved.
//


import SpriteKit
import GameplayKit
import UIKit
import AVFoundation

let screenSize = UIScreen.main.bounds
var screenWidth: CGFloat?
var screenHeight: CGFloat?


class GameScene: SKScene {
    
    var slotBackground: SlotBackground?
    /*var plane: Plane?
    var ocean1: Ocean?
    var ocean2: Ocean?
    var island: Island?
    
    var clouds: [Cloud] = []
    var cloudNum: Int = 3
 
 */
    
    var degToRad = 0.01745329252
    
    
    override func didMove(to view: SKView) {
        
        //For Background Music
        let backgroundSound = SKAudioNode(fileNamed: "background_music.mp3")
        self.addChild(backgroundSound)
        
        screenWidth = frame.width
        screenHeight = frame.height
        
        // add the SlotBackground to scene
        slotBackground = SlotBackground()
        addChild(slotBackground!)
      
        
        /*
        // add the ocean2 to scene
        ocean2 = Ocean()
        ocean2?.position.y = 772
        ocean2?.zPosition = 0
        addChild(ocean2!)
        
        island = Island()
        addChild(island!)
        
        // add plane to scene
        plane = Plane()
        plane?.position = CGPoint(x: 0.0, y: -500.0)
        addChild(plane!)
 
 */
        
        // adds multiple clouds to the scene
     /*   for index in 0...self.cloudNum - 1 {
            let cloud: Cloud = Cloud()
            clouds.append(cloud)
            self.addChild(clouds[index])
        }
        */
     
        // Label Config and adding to the scene
        ScoreBoard.LivesLabel.position.x = -screenSize.width + 130.0
        ScoreBoard.LivesLabel.position.y = screenSize.height - 55.0
        
        ScoreBoard.LivesLabel.fontColor = UIColor.yellow
        ScoreBoard.LivesLabel.fontSize = 48.0
        ScoreBoard.LivesLabel.zPosition = 5
        ScoreBoard.LivesLabel.fontName = "Arial Bold"
        ScoreBoard.Lives = 5
        
        
        addChild(ScoreBoard.LivesLabel)
        
        ScoreBoard.ScoreLabel.position.x = screenSize.width - 170.0
        ScoreBoard.ScoreLabel.position.y = screenSize.height - 55.0
        
        ScoreBoard.ScoreLabel.fontColor = UIColor.yellow
        ScoreBoard.ScoreLabel.fontSize = 48.0
        ScoreBoard.ScoreLabel.zPosition = 5
        ScoreBoard.ScoreLabel.fontName = "Arial Bold"
        ScoreBoard.Score = 0
        
        
        addChild(ScoreBoard.ScoreLabel)
 
 
        /*
        // play blackground engine sound
        let engineSound = SKAudioNode(fileNamed: "engine.mp3")
        addChild(engineSound)
        engineSound.autoplayLooped = true
        
        //preload sounds
        do {
            let sounds:[String] = ["thunder", "yay"]
            for sound in sounds {
                let path:String = Bundle.main.path(forResource: sound, ofType: "mp3")!
                let url: URL = URL(fileURLWithPath: path)
                let player:AVAudioPlayer = try AVAudioPlayer(contentsOf: url)
                player.prepareToPlay()
            }
        } catch {
        }
        */
        
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
       // plane?.position = CGPoint(x: pos.x, y: -500.0)
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        //plane?.position = CGPoint(x: pos.x, y: -500.0)
    }
    
    func touchUp(atPoint pos : CGPoint) {
       // plane?.position = CGPoint(x: pos.x, y: -500.0)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        slotBackground?.Update()
        //ocean1?.Update()
      //  ocean2?.Update()
        //island?.Update()
        //plane?.Update()
        
        //Collision.check(scene: self, object1: plane!, object2: island!)
        
        /*
        for cloud in clouds {
          //  cloud.Update()
            //Collision.check(scene: self, object1: plane!, object2: cloud)
        }
        */
        
        
    }
    
}

