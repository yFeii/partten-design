//
//  IUserInfo.swift
//  适配器
//
//  Created by yFeii on 2019/11/6.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation
/*
 * 原系统接口结构
 */
protocol IUserInfo {
    
    func getUserName() -> String?
    func getHomeAddress() -> String?
    func getMobileNumber() -> String?
    func getOfficeTelNumber() -> String?
    func getJobPosition() -> String?
    func getHomeTelNumber() -> String?
}
