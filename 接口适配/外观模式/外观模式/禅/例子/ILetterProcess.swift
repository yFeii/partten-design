//
//  ILetterProcess.swift
//  外观模式
//
//  Created by yFeii on 2019/11/15.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation


protocol ILetterProcess {
    //写信
    func writeContext(_ context:String)
    //写信封地址
    func fillEnvelop(_ address:String)
    //把信装进信封
    func letterInotoEnvelop()
    //发送信
    func sendLetter()
}
