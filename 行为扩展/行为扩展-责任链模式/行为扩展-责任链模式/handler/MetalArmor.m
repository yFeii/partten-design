//
//  MetalArmor.m
//  行为扩展-责任链模式
//
//  Created by yFeii on 2019/8/27.
//  Copyright © 2019 yFeii. All rights reserved.
//

#import "MetalArmor.h"
#import "SwordAttack.h"

@implementation MetalArmor

- (void)handleAttack:(Attack *)attack {
    
    if ([attack isKindOfClass:SwordAttack.class]) {
        
        NSLog(@"盔甲抵御了 刀剑攻击");
    }else{
        NSLog(@"盔甲 抵挡不了 %@ 的攻击",NSStringFromClass(attack.class));
        [self.nextAttackhandler handleAttack:attack];
    }
    
}
@end
