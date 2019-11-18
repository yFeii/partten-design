//
//  BlackHuman.swift
//  工厂模式
//
//  Created by yFeii on 2019/10/2.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation

class BlackHuman:NSObject,Human {

    func getColor() {
        print("黑人的皮肤是黑色的")
    }
    
    func talk() {
        print("黑人说话一般人听不懂")
    }
}
