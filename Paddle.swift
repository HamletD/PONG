//
//  Paddle.swift
//  PONG3
//
//  Created by Hamilton Dang on 11/29/14.
//  Copyright (c) 2014 Codon. All rights reserved.
//

import UIKit
import SpriteKit

class Paddle: SKSpriteNode {
    
    var paddleSpeed : CGFloat = 1.0
    var maxX : CGFloat = UIScreen.mainScreen().bounds.width
    
    func paddleMotion(){

        if self.position.x > maxX {
            self.paddleSpeed = -self.paddleSpeed
            println(maxX)
        }
          /*
        else if position < minX{
            self.paddleMoveSpeed = -self.paddleMoveSpeed
        }*/
            self.position.x += self.paddleSpeed
        
    }
    
    //override init(){
        /*
        paddleMoveSpeed = CGFloat(3.0)
        paddlePosition = super.position.x
        let minX = self.size.width/2
        let maxX = self.frame.size.width - self.size.width/2
        let rangeX = maxX - minX
        
        
        //let moveFarLeft = SKAction.moveToX(minX, duration: 4)
        //let moveFarRight = SKAction.moveToX(maxX, duration: 4)
    }

    
    /*
    func topPaddleSprite(){
        topPaddle.physicsBody = SKPhysicsBody(rectangleOfSize:topPaddle.size) //approximate the body to paddle1
        topPaddle.physicsBody?.dynamic = false  //interacts with physics of scene
        topPaddle.physicsBody?.friction = 0.0
        topPaddle.physicsBody?.restitution = 1.0
        topPaddle.physicsBody = SKPhysicsBody(edgeLoopFromRect: topPaddle.frame)
        topPaddle.physicsBody?.usesPreciseCollisionDetection = true
    }
    */
    
*/
}
