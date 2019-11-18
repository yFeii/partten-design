//
//  IDepartment.swift
//  抽象工厂模式
//
//  Created by yFeii on 2019/10/3.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation

protocol IDepartment {
    
    func insert(_ user:IDepartment)
    func getDepartment(_ id:Int)
}
