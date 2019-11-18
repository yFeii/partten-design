//
//  OuterUserInfo.swift
//  适配器
//
//  Created by yFeii on 2019/11/6.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation

/*
 * 接口适配类
 * 之所以能够增加一个中转类，是因为在IUserInfo的接口设计遵循了依赖倒置原则和里式替换原则
 */
class OuterUserInfo:OuterUser,IUserInfo {
    
    private var baseInfo:[String:String]?
    private var homeInfo:[String:String]?
    private var officeInfo:[String:String]?

    override init() {
        
        super.init()
        baseInfo =  super.getUserBaseInfo()
        homeInfo =  super.getUserHomeInfo()
        officeInfo =  super.getUserOfficeInfo()

    }
    
    func getUserName() -> String? {
        
        let res = self.baseInfo?["userName"]
        print("name = %@",res)
        return res
    }
    
    func getHomeAddress() -> String? {
        
        let res = self.homeInfo?["homeAddress"]
        print("name = %@",res)
        return res
    }
    
    func getMobileNumber() -> String? {
        
        let res = self.baseInfo?["mobileNumber"]
        print("name = %@",res)
        return res
    }
    
    func getOfficeTelNumber() -> String? {
        
        let res = self.officeInfo?["officeTelNumber"]
        print("name = %@",res)
        return res
    }
    
    func getJobPosition() -> String? {
        
        let res = self.officeInfo?["jobPosition"]
        print("name = %@",res)
        return res
    }
    
    func getHomeTelNumber() -> String? {
        
        let res = self.homeInfo?["homeTelNumber"]
        print("name = %@",res)
        return res
    }

}
