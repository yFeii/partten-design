//
//  abstractFactory.swift
//  工厂模式
//
//  Created by yFeii on 2019/10/2.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation



enum typeError:Error,Human {
    func getColor() {
        print("异形")
    }
    
    func talk() {
               
        print("异形")
    }
    
    case objTypeError
}

/*依赖倒置*/
protocol AbstractFactory {
    func createHuman(_ type:Human.Type) -> Human
}
