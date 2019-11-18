//
//  AbstractWhiteHuman.swift
//  抽象工厂模式
//
//  Created by yFeii on 2019/10/3.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation


class AbstractWhiteHuman:Human {
    
    func getColor() {
        print("白种人的皮肤颜色是白色的")
    }
    
    func talk() {
        print("白种人说话是单字节")        
    }
    
}


class FemaleWhiteHuman: AbstractWhiteHuman {
    
    func getSex() {
                
        print("白种人女性")
    }
}


class MaleWhiteHuman: AbstractWhiteHuman {
    
    func getSex() {
                
        print("白种人男性")
    }
}
