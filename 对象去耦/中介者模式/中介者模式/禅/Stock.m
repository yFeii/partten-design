//
//  Stock.m
//  中介者模式
//
//  Created by yFeii on 2019/9/30.
//  Copyright © 2019 yFeii. All rights reserved.
//

#import "Stock.h"
//#import "Purchase.h"
//#import "Sale.h"

@implementation Stock

NSInteger MaxSock = 100;

//增加库存
- (void)increase:(NSInteger)count{
    
    MaxSock += count;
    NSLog(@"当前库存量为：%ld",MaxSock);
}


//减少库存
- (void)decrease:(NSInteger)count{
    
    MaxSock -= count;
    NSLog(@"当前库存量为：%ld",MaxSock);
}

//获得库存量
- (NSInteger)getStockCount{
    
    NSLog(@"当前库存量为：%ld",MaxSock);
    return MaxSock;
}

//存货压力大了，就要通知采购人员不要采购，销售人员尽快销售
- (void)clearStock{
    
    NSLog(@"当前库存量为：%ld,需要打折处理",MaxSock);
    
#pragma mark <中介者模式新增>
    [self.mediator execute:@selector(clearStock) param:nil];
#pragma mark <中介者把下面的逻辑转移到了 中介者中>
//    //不要采购了
//    Purchase *purchase = [Purchase new];
//    [purchase refuseBuyIBM];
//
//
//    //打折处理
//    Sale *sale = [Sale new];
//    [sale offSale];
}
@end
