//
//  Stock.h
//  中介者模式
//
//  Created by yFeii on 2019/9/30.
//  Copyright © 2019 yFeii. All rights reserved.
//

#import "AbbstractColleague.h"

/*
 * 库存管理类
 */

NS_ASSUME_NONNULL_BEGIN

@interface Stock : AbbstractColleague

//增加库存
- (void)increase:(NSInteger)count ;


//减少库存
- (void)decrease:(NSInteger)count;

//获得库存量
- (NSInteger)getStockCount;

//存货压力大了，就要通知采购人员不要采购，销售人员尽快销售
- (void)clearStock;
@end

NS_ASSUME_NONNULL_END
