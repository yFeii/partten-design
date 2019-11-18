//
//  IFactory.swift
//  抽象工厂模式
//
//  Created by yFeii on 2019/10/3.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation


protocol IFactory {
    
    func createUser()->IUser
    func createDepartment()->IDepartment

}
