//
//  ViewController.swift
//  抽象工厂模式
//
//  Created by yFeii on 2019/10/3.
//  Copyright © 2019 yFeii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        /*抽象工厂是工厂方法的升级版，在有多个业务品种，业务分类时可以采用*/
        //使用场景：
        //对于一个对象组（或者是没有任何关系的对象）都有相同的行为约束，则可以使用抽象工厂方法
        /*优点
         *封装性：高层次的模块不必关心实现类，及对象如何被创建，这些由工厂复负责，使用者只关心接口，
         *产品族内的约束为非公开状态，如实现男女比例1：1，则通过工厂内实现约束，使用者只能拿到男人或者
         *女人，具体的比例并不关心
         */
        
        /*缺点
         *扩展困难：如果想要增加一个太监类（新的产品），则需要从车间到产品线到产品都需要增加
         */
        
        /*
         工厂与抽象工厂的区别

         抽象工厂：NSNumber
         通过组合对象来创建抽象产品
         创建多系列产品
         必须修改父类接口才能创建新的产品

         工厂：
         通过类基础来创建新的产品
         创建一种产品
         通过子类化创建者并重载工厂方法来支持新的产品
         */
        //建立男人生产线
        let maleFactory = MaleFactory();
        
        //简历男人生产线
        let femaleFactory = FemaleFactory()
        let b = maleFactory.createBlackHuman()
        let f = femaleFactory.createBlackHuman()
        
        b.getColor()
        b.getSex()
        b.talk()

        f.getColor()
        f.getSex()
        f.talk()
        
        
        let s = SqlseverFactory()
        let sql = s.createUser()
        sql.getUser(1)
        sql.insert(nil)

    }


}

