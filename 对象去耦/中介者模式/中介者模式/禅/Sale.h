//
//  Sale.h
//  中介者模式
//
//  Created by yFeii on 2019/9/30.
//  Copyright © 2019 yFeii. All rights reserved.
//

#import "AbbstractColleague.h"

NS_ASSUME_NONNULL_BEGIN
/*
* 销售管理类
*/
@interface Sale : AbbstractColleague

//销售IBM电脑
- (void)sellIBMComputer:(NSInteger)count;


//反馈销售情况 0~100 之间变化，0代表没卖出去，100代表售空。
- (NSInteger)getSaleStatuseStatu;

//打折处理
- (void)offSale;


@end

NS_ASSUME_NONNULL_END
