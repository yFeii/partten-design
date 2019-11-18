//
//  AbstractYellowHuman.swift
//  抽象工厂模式
//
//  Created by yFeii on 2019/10/3.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation


class AbstractYellowHuman:Human {
    
    func getColor() {
        print("黄种人的皮肤颜色是黄色")
    }
    
    func talk() {
        print("黄种人说话贼牛逼")
    }
    
}

class FemaleYellowHuman: AbstractYellowHuman {
    
    func getSex() {
                
        print("黑种人女性")
    }
}


class MaleYellowHuman: AbstractYellowHuman {
    
    func getSex() {
                
        print("黑种人男性")
    }
}
