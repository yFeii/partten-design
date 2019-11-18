//
//  HumanFactory.swift
//  工厂模式
//
//  Created by yFeii on 2019/10/2.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation


class HumanFactory:AbstractFactory  {
    
    func createHuman(_ type:Human.Type) -> Human {
        
        guard type is NSObject.Type else {
            
            return typeError.objTypeError
        }

        let ob = type as! NSObject.Type
        let ins = ob.init() as! Human
        return ins
    }
}


