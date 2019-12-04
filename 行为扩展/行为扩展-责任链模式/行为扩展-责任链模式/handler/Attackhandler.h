//
//  Attackhandler.h
//  行为扩展-责任链模式
//
//  Created by yFeii on 2019/8/27.
//  Copyright © 2019 yFeii. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Attack.h"

NS_ASSUME_NONNULL_BEGIN
//防具基类。负责转发 “处理攻击”, 攻击类型
@interface Attackhandler : NSObject

@property (nonatomic, strong) Attackhandler *nextAttackhandler;

- (void)handleAttack:(Attack *)attack;
@end

NS_ASSUME_NONNULL_END
