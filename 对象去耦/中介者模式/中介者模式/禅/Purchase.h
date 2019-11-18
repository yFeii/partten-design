//
//  Purchase.h
//  中介者模式
//
//  Created by yFeii on 2019/9/30.
//  Copyright © 2019 yFeii. All rights reserved.
//

#import "AbbstractColleague.h"

NS_ASSUME_NONNULL_BEGIN


/*
 * 采购管理类
 */
@interface Purchase : AbbstractColleague

//采购电脑数量
- (void)buyIBMComputer:(NSInteger)count;

//不在采购
- (void)refuseBuyIBM;
@end

NS_ASSUME_NONNULL_END
