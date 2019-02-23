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
    var bet1:Bet1?
    var betMax:BetMax?
    var spin:Spin?
    
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
        
        
        //For Bet 1 to scene programatically
        bet1 = Bet1()
        bet1?.position.x = -249.48
        bet1?.position.y = -360
        bet1?.zPosition = 6
        bet1?.name = "bet1"
        addChild(bet1!)
        
        
        //For Bet Max to scene programatically
        betMax = BetMax()
        betMax?.position.x = 227.602
        betMax?.position.y = -360.228
        betMax?.zPosition = 5
        betMax?.name = "betMax"
        addChild(betMax!)
        
        //For Spin to scene programatically
        spin = Spin()
        spin?.position.x = -10
        spin?.position.y = -360.228
        spin?.zPosition = 5
        addChild(spin!)
      


        // Label Config and adding to the scene
        //Bet Label
        ScoreBoard.BetLabel.position.x = -15
        ScoreBoard.BetLabel.position.y = -230.633
        
        ScoreBoard.BetLabel.fontColor = UIColor.yellow
        ScoreBoard.BetLabel.fontSize = 48.0
        ScoreBoard.BetLabel.zPosition = 5
        ScoreBoard.BetLabel.fontName = "Arial Bold"
        ScoreBoard.Bet = 1
        addChild(ScoreBoard.BetLabel)
        
        //Winnnings Label
        ScoreBoard.ScoreLabel.position.x = 229.887
        ScoreBoard.ScoreLabel.position.y = -236.129
        
        ScoreBoard.ScoreLabel.fontColor = UIColor.yellow
        ScoreBoard.ScoreLabel.fontSize = 48.0
        ScoreBoard.ScoreLabel.zPosition = 5
        ScoreBoard.ScoreLabel.fontName = "Arial Bold"
        ScoreBoard.Score = 0
        addChild(ScoreBoard.ScoreLabel)
        
        //Credits Label
        ScoreBoard.CreditsLabel.position.x = -225.098
        ScoreBoard.CreditsLabel.position.y = -229.786
        
        ScoreBoard.CreditsLabel.fontColor = UIColor.yellow
        ScoreBoard.CreditsLabel.fontSize = 48.0
        ScoreBoard.CreditsLabel.zPosition = 5
        ScoreBoard.CreditsLabel.fontName = "Arial Bold"
        ScoreBoard.Credits = 500
        addChild(ScoreBoard.CreditsLabel)
        
        
        
        //IncreaseBet Label
        ScoreBoard.IncreaseBet.position.x = -1
        ScoreBoard.IncreaseBet.position.y = -480.228
        
        ScoreBoard.IncreaseBet.fontColor = UIColor.black
        ScoreBoard.IncreaseBet.fontSize = 72.0
        ScoreBoard.IncreaseBet.zPosition = 5
        ScoreBoard.IncreaseBet.fontName = "Arial Bold"
        addChild(ScoreBoard.IncreaseBet)
        
        //DecreaseBet Label
        ScoreBoard.DecreaseBet.position.x = 40
        ScoreBoard.DecreaseBet.position.y = -480.228
        
        ScoreBoard.DecreaseBet.fontColor = UIColor.black
        ScoreBoard.DecreaseBet.fontSize = 80
        ScoreBoard.DecreaseBet.zPosition = 5
        ScoreBoard.DecreaseBet.fontName = "Arial Bold"
        addChild(ScoreBoard.DecreaseBet)
        
        //Reset Label
        ScoreBoard.ResetLabel.position.x = -225.098
        ScoreBoard.ResetLabel.position.y = -550
        
        ScoreBoard.ResetLabel.fontColor = UIColor.white
        ScoreBoard.ResetLabel.fontSize = 48.0
        ScoreBoard.ResetLabel.zPosition = 5
        ScoreBoard.ResetLabel.fontName = "Arial Bold"
        ScoreBoard.ResetLabel.name = "reset"

        addChild(ScoreBoard.ResetLabel)
        
        //Quit Label
        ScoreBoard.QuitLabel.position.x = 229.887
        ScoreBoard.QuitLabel.position.y = -550
        
        ScoreBoard.QuitLabel.fontColor = UIColor.white
        ScoreBoard.QuitLabel.fontSize = 48.0
        ScoreBoard.QuitLabel.zPosition = 5
        ScoreBoard.QuitLabel.fontName = "Arial Bold"
        ScoreBoard.QuitLabel.name = "quit"
        addChild(ScoreBoard.QuitLabel)
     
        /*
        //Bet1 Label
        ScoreBoard.Bet1Label.position.x = -258.746
        ScoreBoard.Bet1Label.position.y = -386.412
        
        ScoreBoard.Bet1Label.fontColor = UIColor.black
        ScoreBoard.Bet1Label.fontSize = 32.0
        ScoreBoard.Bet1Label.zPosition = 5
        ScoreBoard.Bet1Label.fontName = "Arial Bold"
      //  ScoreBoard.Bet1 = 500
        
        
        addChild(ScoreBoard.Bet1Label)
        
        //BetMax Label
        ScoreBoard.BetMaxLabel.position.x = 184
        ScoreBoard.BetMaxLabel.position.y = -391.257
        
        ScoreBoard.BetMaxLabel.fontColor = UIColor.black
        ScoreBoard.BetMaxLabel.fontSize = 32.0
        ScoreBoard.BetMaxLabel.zPosition = 5
        ScoreBoard.BetMaxLabel.fontName = "Arial Bold"
       // ScoreBoard.BetMax = 100
        
        
        addChild(ScoreBoard.BetMaxLabel)
 
 */
 
 
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
        
        //for t in touches { self.touchDown(atPoint: t.location(in: self)) }
            for touch in touches {
                let locationPosition = touch.location(in: self)
                let touchedNode = atPoint(locationPosition)
                if touchedNode.name == "bet1"
                {
                    ScoreBoard.Bet = 1
                }
                else if (touchedNode.name == "betMax")
                {
                   ScoreBoard.Bet = ScoreBoard.Credits

                }
                else if (touchedNode.name == "quit")
                {
                    exit(0)
                    
                }
                else if (touchedNode.name == "reset")
                {
                    ScoreBoard.Bet = 1
                    ScoreBoard.Credits = 500
                    ScoreBoard.Winnings = 0
                    ScoreBoard.Msg = ""
                }
                
                
            }
        
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
        
    }
    
}

