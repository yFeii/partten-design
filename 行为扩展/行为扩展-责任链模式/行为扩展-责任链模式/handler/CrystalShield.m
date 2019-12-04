//
//  CrystalShield.m
//  行为扩展-责任链模式
//
//  Created by yFeii on 2019/8/27.
//  Copyright © 2019 yFeii. All rights reserved.
//

#import "CrystalShield.h"
#import "MagicaFireAttack.h"

@implementation CrystalShield

- (void)handleAttack:(Attack *)attack {
    
    if ([attack isKindOfClass:MagicaFireAttack.class]) {
        
        NSLog(@"水晶盾抵御了 魔法火焰球攻击");
    }else{
        NSLog(@"水晶盾 抵挡不了 %@ 的攻击",NSStringFromClass(attack.class));
        [self.nextAttackhandler handleAttack:attack];
    }
    
}

@end
