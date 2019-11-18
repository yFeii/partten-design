//
//  ViewController.swift
//  外观模式
//
//  Created by yFeii on 2019/11/15.
//  Copyright © 2019 yFeii. All rights reserved.
//

import UIKit


/*
 外观模式是一种比较常用的封装模式，其定义如下：
 要求一个子系统的外部与其内部的通信必须通过一个统一的对象进行，外观模式提供一个高层次的接口，使得子系统更易于使用
 
 在开发过程中的运用频率非常高，尤其是在现阶段各种第三方SDK充斥在我们的周边，而这些SDK很大概率会使用外观模式。
 通过一个外观类使得整个系统的接口只有一个统一的高层接口，这样能够降低用户的使用成本，也对用户屏蔽了很多实现细节。当然，
 在我们的开发过程中，外观模式也是我们封装API的常用手段，例如网络模块、ImageLoader模块等。
 
 
 类构成：
 facade：门面角色
 客户端可以调用这个角色的方法，此角色知晓子系统的所以功能，
 一般情况下把所有客户端的请求委派到相应的子系统中，也就是说该角色没有实际的业务逻辑，只是个委托类
 
 subsystem:子系统
 可以同时有一个或多个子系统，子系统不制动facade 的存在。对于子系统，facade 仅仅是另一客户端而已
 
 
 优点：
 减少系统的相互依赖：
 客户端不需要深入子系统内部调用，只依赖facade
 提高了灵活性
 不管子系统内如何变化，只要不影响facade 对象，可以随意变化
 提高安全性
 子系统限制变化
 
 缺点：
 不符合开闭原则，facade对象无法扩展，如果facade出现错误，只能修改facade对象
 
 使用场景：
 为一个复杂的模块或者子系统提供一个外接访问的接口(SDK)
 子系统相对独立，外界对子系统的访问只要黑箱操作即可
 预防低水平人员带来的风险
 使用外观对子系统进行分层，每一个子系统级别有一个外观，让他们通过外观进行通信
 子系统正逐渐变得复杂。应用模式的过程中演化出许多类。可以使用外观为这些子系统类提供一个较简单的接口。
 可以使用外观对子系统进行分层。每个子系统级别有一个外观作为入口点。让它们通过其外观进行通信，可以简化它们的依赖关系。
 
 */

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.callChanExample()
        self.callImproveChanExample()
        self.callOBJCPDExample()
    }
    
    /*
     * 不符合高内聚的定义，迪米特法则等，对于调用者需要知道4个步骤且顺序不能改变，否则无法正确的寄出信件
     */
    func callChanExample() {
        
        let imp = LetterProcessImpl()
        imp.writeContext("好难吖")
        imp.fillEnvelop("中国")
        imp.letterInotoEnvelop()
        imp.sendLetter()
    }
    
    /*
     对于客户端来讲，只需要关心要写什么，不用关心发送的相关流程。这样不但简化，而且容易扩展，比如要添加信件的安全检查
     此时只需要修改 ModenPostOffice 类内容即可，客户端不需要修改
     */
    func callImproveChanExample() {
        
        let man = ModenPostOffice()
        man.sendLetter("省事了", "中国")
    }
    
    /*
     * 案例1：客人上车做出租车，对司机说。我要去xxx地方，司机开始“执行“一些列动作，“松刹车，踩油门等“，此时司机抽象了驾
     * 驶汽车的底层复杂操作细节，通过提供驾驶服务（简化接口）把原本你与车的复杂操作分离出来。
     */
    
    
    func callOBJCPDExample() {
        
        let cd = CarDriver()
        cd.driveToLocation(2)
    }
}

