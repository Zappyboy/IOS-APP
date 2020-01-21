//
//  GameScene.swift
//  ApplePiesy's adventure
//
//  Created by Mary Kraus on 21/01/2020.
//  Copyright © 2020 ApplePiesy Studio. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    let player = SKSpriteNode(imageNamed: "playerShip")

    
    override func didMove(to view: SKView) {
        
        let background = SKSpriteNode(imageNamed: "background")
        background.size = self.size
        background.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        background.zPosition = 0
        self.addChild(background)
        
        player.setScale(1)
        player.position = CGPoint(x: self.size.width/2, y: self.size.height * 0.2)
        player.zPosition = 2
        self.addChild(player)
    }
    
    func fireBullet() {
        let bullet = SKSpriteNode(imageNamed: "bullet")
        bullet.setScale(1)
        bullet.position = player.position
        self.addChild(bullet)
        
        let moveBullet = SKAction.moveTo(y: self.size.height + bullet.size.height, duration: 1)
        let deleteBullet = SKAction.removeFromParent()
        let BulletSequence = SKAction.sequence([moveBullet, deleteBullet])
        bullet.run(BulletSequence)
        
        
    }
    
    override
 
}
