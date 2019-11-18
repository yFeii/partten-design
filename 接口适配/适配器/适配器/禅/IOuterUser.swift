//
//  IOuterUser.swift
//  适配器
//
//  Created by yFeii on 2019/11/6.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation
/*
 *劳务公司接口结构
 */
protocol IOuterUser {
    
    func getUserBaseInfo() -> [String:String]?
    func getUserOfficeInfo() -> [String:String]?
    func getUserHomeInfo() -> [String:String]?

}
