//
//  LetterProcessImpl.swift
//  外观模式
//
//  Created by yFeii on 2019/11/15.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation


class LetterProcessImpl: ILetterProcess {
    func writeContext(_ context: String) {
        print("写信的内容是",context)
    }
    
    func fillEnvelop(_ address: String) {
        print("信封的地址是",address)
    }
    
    func letterInotoEnvelop() {
        print("装进信封里")
    }
    
    func sendLetter() {
                
        print("发送信")
    }
    
    
    
}
