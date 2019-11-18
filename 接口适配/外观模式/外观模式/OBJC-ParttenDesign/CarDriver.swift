//
//  CarDriver.swift
//  外观模式
//
//  Created by yFeii on 2019/11/15.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation

// 司机类外观
class CarDriver {
    
    func driveToLocation(_ loc:Float) {
        //启动计价器
        let m = Teximeter()
        m.start()
        
        //启动汽车
        let car = Car()
        car.releaseBrakes()
        car.changeGears()
        car.pressAccelerator()
        car.releaseAccelerator()
        car.pressBrakes()
        //停止计价器
        m.stop()
    }
}
