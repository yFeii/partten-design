//
//  ViewController.swift
//  工厂模式
//
//  Created by yFeii on 2019/10/2.
//  Copyright © 2019 yFeii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        /*
         
         根据依赖倒置原则，需要对工厂和人类分别提供一个抽象接口：
         AbstractFactory，Human
         
         在简单的使用场景中（一个模块仅需要一个工厂类），如果去掉工厂接口，会演变成简单工厂模式
         在复杂的场景下（创建对象之后，还需要对对象进行初始化的属性赋值，且各个类型的对象属性不相同），
         此时应该采用多个继承AbstractFactory 的子类，
         */
        // Do any additional setup after loading the view.
        let w = HumanFactory().createHuman((WhiteHuman.self as Human.Type));
        w.getColor()
        w.talk()
        
        let b = HumanFactory().createHuman((BlackHuman.self as Human.Type));
        b.getColor()
        b.talk()

        let y = HumanFactory().createHuman((YellowHuman.self as Human.Type));
        y.getColor()
        y.talk()

    }
}

