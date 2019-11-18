//
//  CarModel.swift
//  生成器（建造者）模式
//
//  Created by yFeii on 2019/10/5.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation

class CarModel:NSObject {
    //各个方法的执行顺序
    var sequence:Array<String>!
    
    //模型启动
    @objc func start()  {
        
    }
    
    //模型停止
    @objc func stop()  {
        
    }
    
    //模型按喇叭
    @objc func alarm()  {
        
    }
    
    //发动引擎
    @objc func engineBoom()  {
        
    }
    
    //开始跑
    func run()  {
        
        for selString in sequence {
            
            let sel = NSSelectorFromString(selString)
            self.perform(sel)
        }
    }
}


class BenzModel: CarModel {
    override func alarm() {
        
        print("奔驰车的喇叭 是这样的")
    }
    
    override func engineBoom() {
        
        print("奔驰车的引擎 是这样的")
    }
    override func start() {
        
        print("奔驰车的起火 是这样的")
    }
    override func stop() {
        
        print("奔驰车的停车 是这样的")
    }
}


class BMWModel: CarModel {
        
    override func alarm() {
        
        print("宝马车的喇叭 是这样的")
    }
    
    override func engineBoom() {
        
        print("宝马车的引擎 是这样的")
    }
    override func start() {
        
        print("宝马车的起火 是这样的")
    }
    override func stop() {
        
        print("宝马车的停车 是这样的")
    }

}
