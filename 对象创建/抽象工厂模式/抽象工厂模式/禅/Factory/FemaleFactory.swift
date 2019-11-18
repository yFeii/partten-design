//
//  FemaleFactory.swift
//  抽象工厂模式
//
//  Created by yFeii on 2019/10/3.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation

class FemaleFactory: HumanFactory {
    func createYellowHuman() -> Human {
        
        return FemaleYellowHuman()
    }
    
    func createWhiteHuman() -> Human {
                
        return FemaleWhiteHuman()
    }
    
    func createBlackHuman() -> Human {
                
        return FemaleBlackHuman()
    }
}
