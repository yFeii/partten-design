//
//  Subject.swift
//  观察者模式
//
//  Created by yFeii on 2019/12/4.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation

//被订阅者接口
protocol Subject {
    
    var action:String? { get set }
    func attach(_ obs:AbstractObserver);
    func detach(_ obs:AbstractObserver);
    func notify();
}

//观察者抽象类
class AbstractObserver {
    var name:String?
    var sub:Subject?
    convenience init(_ name:String,_ sub:Subject) {
        self.init()
        self.name = name
        self.sub = sub
    }
    func update(){
        
    }
}
extension AbstractObserver:Hashable,Equatable {
    public static func == (lhs: AbstractObserver, rhs: AbstractObserver) -> Bool {
        let l = Unmanaged<AnyObject>.passUnretained(lhs as AnyObject).toOpaque()
        let r = Unmanaged<AnyObject>.passUnretained(rhs as AnyObject).toOpaque()
        if l == r {
            return (lhs.hashValue == rhs.hashValue)
        }
        return false
       }

    public func hash(into hasher: inout Hasher) {

        
    }
}
