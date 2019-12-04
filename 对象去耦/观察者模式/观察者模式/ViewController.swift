//
//  ViewController.swift
//  观察者模式
//
//  Created by yFeii on 2019/12/4.
//  Copyright © 2019 yFeii. All rights reserved.
//

import UIKit
/*
 观察者模式 定义：
 观察者模式也叫发布订阅模式，
 Define a one-to-many dependency between objects so that when one object changes state， all dependes are notified and updated automatically。
 定义对象间一种一对多的依赖关系，使得当一个对象的状态g改变，所有依赖于他的对象都即将会得到通知并自动更新
 
 Subject:被观察者
 定义被观察者所必须实现的职责，它必须能够动态地增加，取消观察者，他一般是抽象类或者实现类，仅仅完成作为被观察者所必须实现的职责:管理观察者并通知观察者。
 
 Observer:观察者
 观察者收到消息后，即进行update操作，对收到的信息进行更新
 
 ConcreteSubject:具体的被观察者
 定义被观察者自己的业务逻辑，同时定义对哪些事件进行通知。
 
 ConcreteObserver:具体的观察者
 每个观察者在收到消息后的处理反应是不一样的，各个观察者有自己的业务逻辑
 优点：
 观察者和被观察者之间是抽象解耦的
 建立了一套触发机制
 
 
 使用场景：
 关联行为场景，需要注意的是，关联行为是可拆分的，而不是组合关系
 事件多级触发场景
 跨系统的消息交换场景，如消息队里的处理机制
 
 */
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let qiantai = Secretary.init()
        let tongshi1 = StockObserver.init("a", qiantai)
        let tongshi2 = StockObserver.init("b", qiantai)
        
        qiantai.attach(tongshi1)
        qiantai.attach(tongshi2)        
        qiantai.action = "老板回来了"
        qiantai.notify()
        
        
        
        let huhansan = ConcreteSubject()
        
        //看股票
        let ts1 = ConcreteObserver.init("a", huhansan)
        
        huhansan.attach(ts1);
        huhansan.action="老板查岗了"
        huhansan.notify()
    }

    
}

