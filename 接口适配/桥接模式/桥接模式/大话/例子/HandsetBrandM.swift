//
//  HandsetBrandM.swift
//  桥接模式
//
//  Created by yFeii on 2019/11/14.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation

/*
 手机品牌M
 */
class HandsetBrandM:HandsetBrand {
   
}


/*
 手机品牌M的游戏
 */
class HandsetBrandMGame:HandsetBrandM {
   
    override func run() {
        print("运行M牌手机的游戏")
    }
}


/*
 手机品牌M的通讯录
 */
class HandsetBrandMAddressList:HandsetBrandM {
   
    override func run() {
        print("运行M牌手机的通讯录")
    }
}
