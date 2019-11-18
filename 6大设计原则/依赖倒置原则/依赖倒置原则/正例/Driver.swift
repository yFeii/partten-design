//
//  Driver.swift
//  依赖倒置原则
//
//  Created by yFeii on 2019/10/2.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation

class Driver : IDriver {
    
    func driver(_ car:Car) {

        car.run()
    }
}


