//
//  HouseCorp.swift
//  桥接模式
//
//  Created by yFeii on 2019/11/14.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation

/*
* 房地产公司
*/
class HouseCorp: AbstructCorp {
    
    override func produce() {
        print("房地产公司盖房子")
    }
    
    override func sell() {
        print("房地产公司出售房子")
    }
    
    override func makeMoney() {
        super.makeMoney()
        print("房地产公司赚大钱啦")
    }
}
