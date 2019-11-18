//
//  UserInfo.swift
//  适配器
//
//  Created by yFeii on 2019/11/6.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation

class UserInfo: IUserInfo {
    func getHomeAddress() -> String? {
        return "杭州"
    }
    
    func getMobileNumber() -> String? {
        return "138********"
    }
    
    func getOfficeTelNumber() -> String? {
                
        return "110"
    }
    
    func getJobPosition() -> String? {
        return "软件工程师"
    }
    
    func getHomeTelNumber() -> String? {
        return "010"
    }
    
    
    func getUserName() -> String? {
        
        return "yfeii"
    }
}
