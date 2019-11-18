//
//  HandsetSoft.swift
//  桥接模式
//
//  Created by yFeii on 2019/11/14.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation


/*
 抽象软件类
 */
class HandsetSoft {
    
    func run(){
        
        
    }
}


class ImproveHandsetGame:HandsetSoft {
    
    override func run(){
        
        print("运行手机游戏")
    }
}


class ImproveHandsetAddressList:HandsetSoft {
    
    override func run(){
        
        print("运行手机通讯录")

    }
}
