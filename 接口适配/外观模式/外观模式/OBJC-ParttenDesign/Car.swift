//
//  File.swift
//  外观模式
//
//  Created by yFeii on 2019/11/15.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation



class Car {
    
    func releaseBrakes() {
        print("送刹车了")
    }
    
    func changeGears() {
        print("换挡了")
    }

    
    func pressAccelerator() {
        print("踩油门")
    }

    
    func pressBrakes() {
        print("踩刹车")
    }

    func releaseAccelerator() {
        print("松油门")
    }

}
