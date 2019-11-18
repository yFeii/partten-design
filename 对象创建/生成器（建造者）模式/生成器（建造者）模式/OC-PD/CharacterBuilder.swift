//
//  CharacterBuilder.swift
//  生成器（建造者）模式
//
//  Created by yFeii on 2019/10/5.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation
//生成器接口类，抽象类
class CharacterBuilder {
         
    var character:Character!
    
    func buildNewCharacter() -> CharacterBuilder {
        character = Character.init()
        return self;
    }
    
    func buildStrength(_ value:Float) -> CharacterBuilder {
        character?.strength = value;
        return self;
    }
    
    func buildStamina(_ value:Float) -> CharacterBuilder {
        character?.stamina = value;
        return self;
    }
    
    func buildIntelligence(_ value:Float) -> CharacterBuilder {
        character?.intelligence = value;
        return self;
    }
    
    func buildAgility(_ value:Float) -> CharacterBuilder {
        character?.agility = value;
        return self;
    }
    
    func buildAggressiveness(_ value:Float) -> CharacterBuilder {
        character?.aggressiveness = value;
        return self;
    }
}
