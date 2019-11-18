//
//  ViewController.swift
//  适配器
//
//  Created by yFeii on 2019/11/6.
//  Copyright © 2019 yFeii. All rights reserved.
//

import UIKit

/*
 * 适配器的使用场景，你有动机修改一个已经投产中的接口时，比如系统扩展了，需要使用一个已经存在的类，但这个类又不符合系统的接口
 * 注意在详细设计阶段不要考虑它，它不是为了解决还处在开发阶段的问题，而是解决正在服役的问题，它是一种补救模
 */
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        /*
         * 没有连接到新的劳务系统的用法
         */
        let gril = UserInfo.init()
        for _ in 0...20 {
            let string = gril.getUserName()
            print("gril name is %@",string)
        }
        
        /*
         * 连接到新的劳务系统的用法
         */
        let gril1 = OuterUserInfo.init()
        for _ in 0...20 {
            let string = gril1.getUserName()
            print("gril name is %@",string)
        }
    }


}

