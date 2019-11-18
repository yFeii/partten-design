//
//  ClothesCorp.swift
//  桥接模式
//
//  Created by yFeii on 2019/11/14.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation

/*
* 服装公司
*/
class ClothesCorp: AbstructCorp {
    
    override func produce() {
        print("服装公司生产衣服")
    }
    
    override func sell() {
        print("服装公司出售衣服")
    }
    
    override func makeMoney() {
        super.makeMoney()
        print("服装公司赚小钱")
    }
}


