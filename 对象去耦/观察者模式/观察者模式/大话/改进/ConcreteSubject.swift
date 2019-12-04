//
//  ConcreteSubject.swift
//  观察者模式
//
//  Created by yFeii on 2019/12/4.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation
//订阅者具体类
class ConcreteSubject:Subject {
    var action: String?
    
    var list:Array<AbstractObserver> = Array<AbstractObserver>.init()
    func attach(_ obs: AbstractObserver) {
        list.append(obs)
    }
    
    func detach(_ obs: AbstractObserver) {
        let index = list.firstIndex(of: obs)
        if index != nil {
            list.remove(at: index!)
        }
    }
    
    func notify() {
        
        list.map { (obs) in
            
            obs.update()
        }
    }
}

class ConcreteObserver:AbstractObserver {
    
    override func update(){

        print(sub?.action,self.name,"关闭股票，继续工作")
    }
}
