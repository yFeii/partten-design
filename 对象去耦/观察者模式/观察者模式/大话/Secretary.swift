//
//  Secretary.swift
//  观察者模式
//
//  Created by yFeii on 2019/12/4.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation

/*
 场景
 秘书在“看到”老板来了之后要，通知正在“钓鱼”的同事，老板来了，抓紧工作
 */

//前台秘书类
class Secretary {
    
    private var observers = Array<StockObserver>.init()
    var action:String!
    
    func attach(_ observer:StockObserver) {
        observers.append(observer)
    }
    
    func notify() {
        observers.map { (cur) in
            
            cur.update()
        }
    }
}


//需要被通知的同事
class StockObserver{
    
    private var name:String!
    private var sub:Secretary!
    
    convenience init(_ name:String,_ sub:Secretary) {
                
        self.init()
        self.name = name
        self.sub = sub
    }
    func update() {
        
        print(sub.action,self.name,"关闭股票，继续工作")
    }
}
