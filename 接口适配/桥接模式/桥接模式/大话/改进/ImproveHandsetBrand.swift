//
//  ImproveHandsetBrand.swift
//  桥接模式
//
//  Created by yFeii on 2019/11/14.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation
/*

 改进后手机品牌，分离软件类
 */
class ImproveHandsetBrand {
    //引用实现类
    var soft:HandsetSoft
    init(_ soft:HandsetSoft) {
        self.soft = soft
    }
    func run() {
        
        self.soft.run()
    }
}


