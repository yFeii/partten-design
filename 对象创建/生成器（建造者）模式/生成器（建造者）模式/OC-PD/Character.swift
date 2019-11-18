//
//  Character.swift
//  生成器（建造者）模式
//
//  Created by yFeii on 2019/10/4.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation

class Character {
    //防御
    var protection:Float
    //攻击
    var power:Float
    
    //力量
    var strength:Float
    
    //耐力
    var stamina:Float
    
    //智力
    var intelligence:Float
    
    //敏捷
    var agility:Float
    
    //攻击力
    var aggressiveness:Float
    
    init() {
        
        protection = 1.0
        power = 1.0
        strength = 1.0
        stamina = 1.0
        intelligence = 1.0
        agility = 1.0
        aggressiveness = 1.0
    }
}

