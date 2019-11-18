//
//  ChasingGame.swift
//  生成器（建造者）模式
//
//  Created by yFeii on 2019/10/5.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation

//指导者
class ChasingGame {
    
    //创造游戏角色
    func createPlayer(_ builder:CharacterBuilder) -> Character {
        
        _ = builder.buildNewCharacter().buildStrength(50.0).buildStamina(25.0).buildIntelligence(75.0).buildAgility(65.0).buildAggressiveness(45.0)
        return builder.character
    }
    
    //创造敌人NPC
    func createEnemy(_ builder:CharacterBuilder) -> Character {
        
        _ = builder.buildNewCharacter().buildStrength(80.0).buildStamina(65.0).buildIntelligence(35.0).buildAgility(25.0).buildAggressiveness(95.0)
        return builder.character
    }
}
