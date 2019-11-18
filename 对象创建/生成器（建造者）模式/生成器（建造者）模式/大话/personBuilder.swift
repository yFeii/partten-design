//
//  personBuilder.swift
//  生成器（建造者）模式
//
//  Created by yFeii on 2019/10/5.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation
class personBuilder {
    
    var p:person!
    func buildPerson(){
        p = person()
    }
    
    func buildHead(_ value:Float) {
        
    }
    func buildBody(_ value:Float) {
        
    }
    
}

class personThinBuilder: personBuilder {
    
    override func buildBody(_ value: Float) {
        p.body = value
        
    }
    
    override func buildHead(_ value: Float) {
        
        p.head = value;
    }
}
class personFatBuilder: personBuilder {
    
    override func buildBody(_ value: Float) {
        p.body = value
    }
    
    override func buildHead(_ value: Float) {
        
        p.head = value;
    }
}
