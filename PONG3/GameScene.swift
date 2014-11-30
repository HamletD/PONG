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
    
    
    let topPaddleLabel = "topPaddle"
    let bottomPaddleLabel = "bottomPaddle"
    let ceilingLabel = "ceiling"
    let floorLabel = "floor"

    
    
    enum ColliderTypes: UInt32 {
        case topPaddle = 1
        case bottomPaddle = 2
        case ball = 4
        case floor = 8
        case ceiling = 16
        case pong = 32
    }
    
    func setupScene(){
        //set the ball physics velocity bounce
        self.backgroundColor = UIColor(red: 0, green: 0.4, blue: 0.32, alpha: 1.4)
        //self.physicsWorld.gravity = CGVectorMake(0, -20)
        //adjust the speed of the ball
        //self.physicsWorld.speed = CGFloat(ballSpeed)
        //setup the contact delegate
        self.physicsWorld.contactDelegate = self
        //add score display here
        //add background here
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
        //setup ceiling, floor, and edges

    }
    
    func setupBall(position: CGPoint) -> SKNode{
        var ball = SKSpriteNode(imageNamed: "ball")
        ball.name = "ball"
        ball.position = position
        ball.physicsBody = SKPhysicsBody(circleOfRadius: ball.size.width/2)
        ball.physicsBody?.dynamic = true
        ball.physicsBody?.friction = 0.1
        ball.physicsBody?.restitution = 1.0
        ball.physicsBody?.mass = 1
        ball.physicsBody?.linearDamping = 0.0
        ball.physicsBody?.resting = false
        ball.physicsBody?.affectedByGravity = true
        ball.physicsBody?.applyImpulse(CGVectorMake(10.0, 0.4))
        ball.physicsBody?.angularVelocity = CGFloat(0.5)
        
        //this will allow the balls to rotate when bouncing
        ball.physicsBody?.allowsRotation = false
        ball.physicsBody?.usesPreciseCollisionDetection = true
        
        //for collision detection
        ball.physicsBody?.categoryBitMask = ColliderTypes.pong.rawValue
        ball.physicsBody?.collisionBitMask = ColliderTypes.floor.rawValue
                                           | ColliderTypes.ceiling.rawValue
                                           | ColliderTypes.topPaddle.rawValue
                                           | ColliderTypes.bottomPaddle.rawValue
        ball.physicsBody?.contactTestBitMask = ColliderTypes.pong.rawValue
                                             | ColliderTypes.ball.rawValue
                                             | ColliderTypes.floor.rawValue
                                             | ColliderTypes.ceiling.rawValue
                                             | ColliderTypes.topPaddle.rawValue
                                             | ColliderTypes.bottomPaddle.rawValue
        self.addChild(ball)
        return ball
    }
    override func didMoveToView(view: SKView) {
        self.setupScene()
        self.addSpritesToScene()
        self.setupStructures()
        //self.setupBall(<#position: CGPoint#>)
        //self.setupTopPaddle()

    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        println("hi mom")
    }
   
    override func update(currentTime: CFTimeInterval) {

    }

}
