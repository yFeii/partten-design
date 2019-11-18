//
//  ModenPostOffice.swift
//  外观模式
//
//  Created by yFeii on 2019/11/15.
//  Copyright © 2019 yFeii. All rights reserved.
//

import Foundation

class ModenPostOffice {
    
    var letterImp:ILetterProcess
    init (){
        
        self.letterImp = LetterProcessImpl();
    }
    //写信封装，投递一体化
    func sendLetter(_ content:String,_ address:String)  {
        
        self.letterImp.writeContext(content)
        self.letterImp.fillEnvelop(address)
        self.letterImp.letterInotoEnvelop()
        self.letterImp.sendLetter()
    }
}
