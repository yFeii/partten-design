//
//  Human.swift
//  抽象工厂模式
//
//  Created by yFeii on 2019/10/3.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation

protocol Human {
    
    //肤色
    func getColor();
    //语言
    func talk();
    //性别
    func getSex();

}

extension Human {
    
    func getSex(){
        print("默认实现的性别")
    }
}
