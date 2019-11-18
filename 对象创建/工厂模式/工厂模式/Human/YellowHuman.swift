//
//  YellowHuman.swift
//  工厂模式
//
//  Created by yFeii on 2019/10/2.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation

class YellowHuman:NSObject, Human {
    
    func getColor() {
        print("黄种人的皮肤是黄色的")
    }
    
    func talk() {
        print("黄人的说话是双字节")
    }
}
