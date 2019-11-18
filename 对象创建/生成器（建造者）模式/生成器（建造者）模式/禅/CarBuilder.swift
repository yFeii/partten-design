//
//  CarBuilder.swift
//  生成器（建造者）模式
//
//  Created by yFeii on 2019/10/5.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation
//抽象生成器
class CarBuilder {
    
    var carModel:CarModel!
    func setSequence(_ sequence:Array<String>)  {
        
        
    }
    
    func buildCarModel()  {
        
    }
}

//生成器
class BenzBuilder: CarBuilder {
    
    override func buildCarModel(){
        
        self.carModel = BenzModel()
    }
    override func setSequence(_ sequence: Array<String>) {
        self.carModel.sequence = sequence
    }
}

//生成器
class BMWBuilder: CarBuilder {
    
    override func buildCarModel(){
        
        self.carModel = BMWModel()
    }
    override func setSequence(_ sequence: Array<String>) {
        self.carModel.sequence = sequence
    }
}
