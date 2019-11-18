//
//  StandardCharacterBuild.swift
//  生成器（建造者）模式
//
//  Created by yFeii on 2019/10/5.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation

//生成器
class StandardCharacterBuilder: CharacterBuilder {
    
    override func buildStrength(_ value: Float) -> CharacterBuilder {
        
        //根据value 更新 角色的防御值和攻击值
        character?.protection = character.protection * value
        character.power = character.power * value
        return super.buildStrength(value)
    }
    
    //耐力
    override func buildStamina(_ value: Float) -> CharacterBuilder {
        
        //根据value 更新 角色的防御值和攻击值
        character?.protection = character.protection * value
        character.power = character.power * value
        return super.buildStamina(value)
    }
    
    //智力与力量成反比
    override func buildIntelligence(_ value: Float) -> CharacterBuilder {
        
        //根据value 更新 角色的防御值和攻击值
        character?.protection = character.protection * value
        character.power = character.power / value
        return super.buildIntelligence(value)
    }
    
    //耐力与力量成反比
    override func buildAgility(_ value: Float) -> CharacterBuilder {
        
        //根据value 更新 角色的防御值和攻击值
        character?.protection = character.protection * value
        character.power = character.power / value
        return super.buildAgility(value)
    }
    
    //攻击力 和防御成反比
    override func buildAggressiveness(_ value: Float) -> CharacterBuilder {
               
        //根据value 更新 角色的防御值和攻击值
        character?.protection = character.protection / value
        character.power = character.power * value
        return super.buildAggressiveness(value)

    }
    
}
