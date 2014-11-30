//
//  Ball.swift
//  PONG3
//
//  Created by Hamilton Dang on 11/29/14.
//  Copyright (c) 2014 Codon. All rights reserved.
//

import UIKit
import SpriteKit

class Ball: SKSpriteNode {
    /*
    
    let ballSpeed = 0.5
    
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


    
    */
}
