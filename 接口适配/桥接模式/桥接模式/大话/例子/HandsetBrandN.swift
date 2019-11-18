//
//  HandsetBrandN.swift
//  桥接模式
//
//  Created by yFeii on 2019/11/14.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation

/*
 手机品牌N
 */
class HandsetBrandN:HandsetBrand {
   
    
}

/*
 手机品牌N的游戏
 */
class HandsetBrandNGame:HandsetBrandN {
   
    override func run() {
        print("运行N牌手机的游戏")
    }
}

/*
 手机品牌N的通讯录
 */
class HandsetBrandNAddressList:HandsetBrandN {
   
    override func run() {
        print("运行N牌手机的通讯录")
    }
}
