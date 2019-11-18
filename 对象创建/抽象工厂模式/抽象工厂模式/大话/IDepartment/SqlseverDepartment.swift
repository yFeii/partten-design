//
//  SqlseverDepartment.swift
//  抽象工厂模式
//
//  Created by yFeii on 2019/10/3.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation

class SqlseverDepartment:IDepartment {
    func insert(_ user: IDepartment) {
                
        print("Sqlsever 中插入一条 department 数据")
    }
    
    func getDepartment(_ id: Int) {
                
        print("Sqlsever 查询 id 为%d 的department数据",id)
    }

}
