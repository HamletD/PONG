//
//  GameScene.swift
//  PONG3
//
//  Created by Hamilton Dang on 11/23/14.
//  Copyright (c) 2014 Codon. All rights reserved.
//

import SpriteKit
import CoreGraphics

class GameScene: SKScene, SKPhysicsContactDelegate{
    
    var topPaddle = Paddle(imageNamed: "paddle1")
    var bottomPaddle = Paddle(imageNamed: "paddle1")
    var ball = Ball(imageNamed: "ball")

    override func didMoveToView(view: SKView) {
        self.setupScene()
    }
    
    func setupScene(){
        
        self.backgroundColor = UIColor(red: 0, green: 0.4, blue: 0.32, alpha: 1.4)
        self.addSpritesToScene()
        self.setupStructures()
    }
    
    func addSpritesToScene(){
        self.addChild(topPaddle)
            topPaddle.position =  CGPointMake(self.frame.width/2, self.frame.height - 50)
        self.addChild(bottomPaddle)
            bottomPaddle.position = CGPointMake(self.frame.width/2, 50)
        self.addChild(ball)
            ball.position = CGPointMake(self.frame.width/2, self.frame.height/2)
    }
    
    func setupStructures(){

    }
    
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {

    }
   
    override func update(currentTime: CFTimeInterval) {
        topPaddle.paddleMotion()
        bottomPaddle.paddleMotion()
    }

}
