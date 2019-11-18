//
//  ImproveAbstructCorp.swift
//  桥接模式
//
//  Created by yFeii on 2019/11/14.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation

/*
 * 改进之后公司抽象类,将产品的实现分离出AbstructProduct
 */

class ImproveAbstructCorp {
    
    var product:AbstructProduct
    //增加构造方法：传入具体的产品
    init(_ product:AbstructProduct) {
        
        self.product = product
    }
    /*
    * 公司是用来赚钱的，每个公司都是先生产，再销售
    */
    func makeMoney() {
        
        self.product.beProducted()
        self.product.beSelled()
    }
}
