//
//  Sale.m
//  中介者模式
//
//  Created by yFeii on 2019/9/30.
//  Copyright © 2019 yFeii. All rights reserved.
//

#import "Sale.h"
//#import "Stock.h"
//#import "Purchase.h"

@implementation Sale

//销售IBM电脑
- (void)sellIBMComputer:(NSInteger)count{

#pragma mark <中介者模式新增>
    [self.mediator execute:@selector(sellComputer) param:@(count)];
#pragma mark <中介者把下面的逻辑转移到了 中介者中>

//    Stock *stock = [Stock new];
//    //货不够了，需要紧急采购
//    if (count > [stock getStockCount]) {
//        
//        Purchase *purchase = [Purchase new];
//        NSInteger purchaseCount = count-[stock getStockCount];
//        [purchase buyIBMComputer:purchaseCount];
//        NSLog(@"货不够了，需要采购%ld",purchaseCount);
//    }
//    NSLog(@"销售了%ld台",count);
//    [stock decrease:count];
}


//反馈销售情况 0~100 之间变化，0代表没卖出去，100代表售空。
- (NSInteger)getSaleStatuseStatu{
    
    NSInteger status = (arc4random() % 100) + 0;
    NSLog(@"IBM电脑的销售情况为%ld台",status);
    return status;
}

//打折处理
- (void)offSale{
    
    
#pragma mark <中介者模式新增>
    [self.mediator execute:@selector(offSale) param:nil];
#pragma mark <中介者把下面的逻辑转移到了 中介者中>
//    Stock *stock = [Stock new];
//    NSLog(@"打折处理%ld台",[stock getStockCount]);
}
@end
