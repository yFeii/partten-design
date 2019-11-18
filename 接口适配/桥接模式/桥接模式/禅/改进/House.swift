//
//  House.swift
//  桥接模式
//
//  Created by yFeii on 2019/11/14.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation

/*
* 房子产品
*/
class House: AbstructProduct {
    
    override func beProducted() {
        print("生产房子啦")
    }
    
    override func beSelled() {
        print("生产的房子卖出去啦")
    }    
}
