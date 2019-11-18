//
//  UnitedNationsSecurityCouncil.h
//  中介者模式
//
//  Created by yFeii on 2019/9/29.
//  Copyright © 2019 yFeii. All rights reserved.
//

#import "DHMediator.h"
#import "USA.h"
#import "Iraq.h"

NS_ASSUME_NONNULL_BEGIN

@interface UnitedNationsSecurityCouncil : DHMediator

@property (nonatomic, strong) USA *colleague1;
@property (nonatomic, strong) Iraq *colleague2;

@end

NS_ASSUME_NONNULL_END
