//
//  personDirector.swift
//  生成器（建造者）模式
//
//  Created by yFeii on 2019/10/5.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation

class personDirector {
    
    func getThinPerson() -> person {
        
        let pt = personThinBuilder()
        pt.buildPerson()
        pt.buildBody(5)
        pt.buildHead(5)
        return pt.p
    }
    
    func getFatPerson() -> person {
                
        let pt = personFatBuilder()
        pt.buildPerson()
        pt.buildBody(50)
        pt.buildHead(50)
        return pt.p
    }
}
