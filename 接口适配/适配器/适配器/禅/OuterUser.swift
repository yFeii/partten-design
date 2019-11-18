//
//  OuterUser.swift
//  适配器
//
//  Created by yFeii on 2019/11/6.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation

class OuterUser: IOuterUser {
    func getUserBaseInfo() -> [String : String]? {
        return ["userName":"yfeii","mobileNumber":"138********"]
    }
    
    func getUserHomeInfo() -> [String : String]? {
                
        return ["homeTelNumber":"010","homeAddress":"杭州"]
    }
    
    func getUserOfficeInfo() -> [String : String]? {
                
        return ["jobPosition":"boss","officeTelNumber":"01010"]
    }
    
}
