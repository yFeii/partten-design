//
//  Purchase.m
//  中介者模式
//
//  Created by yFeii on 2019/9/30.
//  Copyright © 2019 yFeii. All rights reserved.
//

#import "Purchase.h"
//#import "Stock.h"
//#import "Sale.h"

@implementation Purchase
//采购电脑数量

- (void)buyIBMComputer:(NSInteger)count {
#pragma mark <中介者模式新增>
    [self.mediator execute:@selector(buyComputer) param:@(count)];
#pragma mark <中介者把下面的逻辑转移到了 中介者中>
//    //获得库存情况
//    Stock *stock = [Stock new];
//
//    //获得销售情况
//    Sale *sale = [Sale new];
//
//    NSInteger saleStatus = [sale getSaleStatuseStatu];
//    if (saleStatus > 80) {
//        NSLog(@"当前销量好，采购IBM电脑%ld台",count);
//        //如果销量好，则全部采购
//        [stock increase:count];
//    }else{
//        NSLog(@"当前销量不好，折半采购IBM电脑%ld台",count);
//        NSInteger buyCount = count/2;
//        [stock increase:buyCount];
//    }
}
//不在采购

- (void)refuseBuyIBM {
    
    NSLog(@"不在采购IBM电脑");

}
@end
