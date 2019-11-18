//
//  SqlseverUser.swift
//  抽象工厂模式
//
//  Created by yFeii on 2019/10/3.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation

class SqlseverUser: IUser {
    func insert(_ user: IUser?) {
        
        print("Sqlsever 中插入一条 user 数据")
    }
    
    func getUser(_ id: Int) {
                
        print("Sqlsever 查询 id 为%d 的user数据",id)
    }
    
}
