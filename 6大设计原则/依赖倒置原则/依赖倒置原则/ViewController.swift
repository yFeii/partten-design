//
//  ViewController.swift
//  依赖倒置原则
//
//  Created by yFeii on 2019/10/2.
//  Copyright © 2019 yFeii. All rights reserved.
//

import UIKit

/*
 
 依赖倒置原则：
 
 依赖：
 依赖的注入有三种方式：
 构造函数注入（通过构造函数传入依赖  exp:init(_ name:String)）
 Setter注入（通过属性注入，exp:a.name = "张三",a.setName("张三")）
 接口声明注入（本文的正例即使即可注入，通过protocol,interface等方式）
 
 倒置：
 正置：本文的反例 即使正置，正置指的是类之间实实在在的依赖，正常人的思维方式，实体类之间的依赖传递
 倒置：通过抽象，或者接口的方式，把原本的类之间的依赖变成接口（抽象）间的依赖
 
 
 Driver   ------>   Benz
 
 
 Driver  -------> IDriver
                   ⬇️
 Benze   ------->  Car
 */
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let d = tDriver()
        let car = tBenz()
        d.drive(car)
        
        
        let d1 = Driver()
        let c1 = Benz()
        let c2 = BMW()
        
        d1.driver(c1)
        d1.driver(c2)

    }
}

