//
//  IPod.swift
//  桥接模式
//
//  Created by yFeii on 2019/11/14.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation
/*
* IPod产品
*/
class IPod: AbstructProduct {
    
    override func beProducted() {
        print("生产IPod啦")
    }
    
    override func beSelled() {
        print("生产的IPod卖出去啦")
    }
}
