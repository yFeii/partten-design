//
//  Director.swift
//  生成器（建造者）模式
//
//  Created by yFeii on 2019/10/5.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation

class Director{
    
    let bBuilder = BenzBuilder()
    let aBuilder = BMWBuilder()

    func getBenzModel() ->CarModel {
        
        bBuilder.buildCarModel()
        bBuilder.setSequence(["start","stop"])
        return bBuilder.carModel
    }
    
    func getBMWModel() -> CarModel {
        
        aBuilder.buildCarModel()
        aBuilder.setSequence(["start","stop"])
        return aBuilder.carModel
    }
}
