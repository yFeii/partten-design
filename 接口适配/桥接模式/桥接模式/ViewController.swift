//
//  ViewController.swift
//  桥接模式
//
//  Created by yFeii on 2019/11/14.
//  Copyright © 2019 yFeii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        self.doChanImproveExempleCall()
        self.doDaHuaExampleCall()
        self.doDaHuaImproveExampleCall()
    }
    
    /*
     桥接模式的重点是“解耦”.
     定义：将抽象和实现分离，使他们可独立地变化(抽象角色引用实现角色，或者说抽象角色的部分实现是由实现角色完成的)
     抽象和实现分离：并不是说将抽象类和派生类分离，这没有任何意义，实现指的是抽象类和它的派生类用来实现的自己的对象。
     实现系统可能分为多个角度分类，每一种分类都可能变化，那么把这种多角度分离出来让他们独立变化，减少他们的耦合
     在桥接模式中的4个角色
     
     Abstruction:抽象角色
     他的主要职责是定义出该角色的行为，同时保存一个对实现对象的引用，该角色一般是抽象类
     
     Implementor:实现化角色
     他是接口或者抽象类，定义角色必须的行为和属性
     
     RedfinedAbstraction：修正抽象化角色
     他引用实现化角色对抽象化角色进行修正
     
     ContcreteImplementor:具体实现化角色
     它实现接口或抽象类定义的方法和属性
     
     
     类图：
     引用
     Abstruction----->Implementor
     
     继承
     RedfinedAbstraction-----△Abstruction
     ContcreteImplementor-----△Implementor
     
     
     优点：
     抽象和实现的分离：
     他完全是为了解决继承产生的缺点而提出的设计模式，在该模式下，实现可以不受抽象的约束，不在绑定在一个固定的抽象层次上
     优秀的扩充能力：
     如例子所示，想增加实现和抽象都没有问题，只要对外暴露的接口允许这样的变化。
     实现细节对调用方透明：
     调用方不用关心实现细节
     
     使用场景：
     不希望或不适合使用继承的场景：
     例如继承层过渡，无法更细化设计颗粒等场景。
     接口或抽象类不稳定的场景：
     明知道接口不稳定还通过继承来实现是不明智的。
     重用性要求比较高的场景：
     设计的颗粒度越细，则被重用的可能性越高，而采用继承则受父类限制，不太可能出现太细的颗粒度
     
     注意事项：
     使用该模式主要考虑如何拆分抽象和实现，并不是一涉及到继承就考虑该模式，桥接模式的意图是对变化的封装，尽可能把变化的因素封装的最细，最小的逻辑单元内，因此在系统设计时，发现继承有N层时，可以考虑使用该模式
     */
    /*
     * 如果有一天老板想把服装公司修改为生产 山寨产品的公司(比如IPod)，此时需要修改 ClothesCorp 类的全部实现
     * 所以公司与产品紧密的联系在一起，使得产品更换不够灵活
     */
    func doChanExempleCall() {
        print("房地产公司如何运作")
        let hc = HouseCorp()
        hc.makeMoney()
        
        print("服装公司如何运作")
        let cc = ClothesCorp()
        cc.makeMoney()
    }
    
    /*
     * 改进后的类组合 将产品与公司分离（抽象与实现分离）
     * 此时如果ipod 公司不想生产ipod ，只需要 修改对应的产品即可。
     */
    
    func doChanImproveExempleCall() {
        print("房地产公司如何运作")
        let house = House()
        let hc = ImproveHouseCrop.houseCorp(house)
        hc.makeMoney()
        
        
        print("iPod产公司如何运作")
        let ipod = IPod()
        let ipc = ImproveIPodCorp.IPodCrop(ipod)
        ipc.makeMoney()
    }
    
    /*
     类图：
     HandsetBrandM -----> HandsetBrand
     HandsetBrandN -----> HandsetBrand

     HandsetBrandMGame -----> HandsetBrandM
     HandsetBrandNGame -----> HandsetBrandN

     HandsetBrandMAddressList -----> HandsetBrandM
     HandsetBrandNAddressList -----> HandsetBrandN

     如果要添加其他软件功能（MP3）等，需要增加对应的子类
     */
    func doDaHuaExampleCall() {
        print("开始运行软件")
        let mg = HandsetBrandMGame()
        mg.run()
        
        let ng = HandsetBrandNGame()
        ng.run()
        
        let mal = HandsetBrandMAddressList()
        mal.run()
        
        let nal = HandsetBrandNAddressList()
        nal.run()
    }
    
    /*
     * 改进后的类组合 将软件与手机分离（抽象与实现分离）
     */

    func doDaHuaImproveExampleCall() {
        print("开始运行软件")
        let soft = ImproveHandsetGame()
        let softA = ImproveHandsetAddressList()

        let mg = ImproveHandsetBrandM.init(soft)
        mg.run()
        
        let ng = ImproveHandsetBrandN.init(soft)
        ng.run()
        

        let ma = ImproveHandsetBrandM.init(softA)
        ma.run()
        
        let na = ImproveHandsetBrandN.init(softA)
        na.run()

    }

}

