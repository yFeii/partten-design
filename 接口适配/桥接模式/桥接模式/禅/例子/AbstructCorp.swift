//
//  Corp.swift
//  桥接模式
//
//  Created by yFeii on 2019/11/14.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation
/*
 * 公司抽象类
 */

class AbstructCorp {
    

    /*
     * 公司生产方法，不管是什么类型的公司，都应该生产产品，具体的产品由实现类来实现
     */
    func produce()  {
        
    }
    
    /*
      * 公司销售方法，
      */
    func sell()  {
        
    }
    
    /*
    * 公司是用来赚钱的，每个公司都是先生产，再销售
    */
    func makeMoney() {
        
        self.produce()
        self.sell()
    }
}
