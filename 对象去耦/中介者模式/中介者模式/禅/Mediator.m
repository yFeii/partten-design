//
//  Mediator.m
//  中介者模式
//
//  Created by yFeii on 2019/9/30.
//  Copyright © 2019 yFeii. All rights reserved.
//

#import "Mediator.h"
#import "Purchase.h"
#import "Stock.h"
#import "Sale.h"
#import "AbbstractColleague.h"

@implementation Mediator

//中介者模式 通过提供统一的接口，用于各个对象之间的通信，
- (void)execute:(SEL)sel param:(nonnull id)param {
    
    NSString *selString = NSStringFromSelector(sel);
    if ([selString isEqualToString:@"buyComputer"]) {
        
        [self buyComputer:[param integerValue]];
    }else if ([selString isEqualToString:@"clearStock"]){
        
        [self clearStock];
    }else if ([selString isEqualToString:@"offSale"]){
        
        [self offSale];
    }else if ([selString isEqualToString:@"sellComputer"]){
        
        [self sellComputer:[param integerValue]];
    }
}

//转移原对象内部的对象通信部分。

- (void)buyComputer:(NSInteger)count {
            
    //获得库存情况
    NSInteger saleStatus = [self.sale getSaleStatuseStatu];
    if (saleStatus > 80) {
        NSLog(@"当前销量好，采购IBM电脑%ld台",count);
        //如果销量好，则全部采购
        [self.stock increase:count];
    }else{
        NSLog(@"当前销量不好，折半采购IBM电脑%ld台",count);
        NSInteger buyCount = count/2;
        [self.stock increase:buyCount];
    }
}


- (void)clearStock{
    
    //不要采购了
    [self.purchase refuseBuyIBM];    
    //打折处理
    [self.sale offSale];
}


- (void)sellComputer:(NSInteger)count {
    
    //货不够了，需要紧急采购
    if (count > [self.stock getStockCount]) {
            
        NSInteger purchaseCount = count-[self.stock getStockCount];
        [self.purchase buyIBMComputer:purchaseCount];
        NSLog(@"货不够了，需要采购%ld",purchaseCount);
    }
    NSLog(@"销售了%ld台",count);
    [self.stock decrease:count];
}

- (void)offSale {
          
    NSLog(@"打折处理%ld台",[self.stock getStockCount]);
}
@end
