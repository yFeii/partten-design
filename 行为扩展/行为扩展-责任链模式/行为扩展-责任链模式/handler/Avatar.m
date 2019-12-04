//
//  Avatar.m
//  行为扩展-责任链模式
//
//  Created by yFeii on 2019/8/27.
//  Copyright © 2019 yFeii. All rights reserved.
//

#import "Avatar.h"

@implementation Avatar

- (void)handleAttack:(Attack *)attack {
    
    NSLog(@"我被 %@ 打了", NSStringFromClass(attack.class));
}
@end
