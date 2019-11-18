//
//  AbstractBlackHuman.swift
//  抽象工厂模式
//
//  Created by yFeii on 2019/10/3.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation

class AbstractBlackHuman:Human {
    
    func getColor() {
        print("黑种人的皮肤颜色是黑色的")
    }
    
    func talk() {
        print("黑种人说话基本听不懂")
    }
    
    func getSex() {
                
        print("黑种人女性")
    }
}

class FemaleBlackHuman: AbstractBlackHuman {
    
//    override func getSex() {
//
//        print("黑种人女性")
//    }
}


class MaleBlackHuman: AbstractBlackHuman {
    
//    override func getSex() {
//                
//        print("黑种人男性")
//    }
}
