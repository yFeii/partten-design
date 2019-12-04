//
//  Attackhandler.m
//  行为扩展-责任链模式
//
//  Created by yFeii on 2019/8/27.
//  Copyright © 2019 yFeii. All rights reserved.
//

#import "Attackhandler.h"

@implementation Attackhandler

- (void)handleAttack:(Attack *)attack {
    
    [self.nextAttackhandler handleAttack:attack];
}
@end
