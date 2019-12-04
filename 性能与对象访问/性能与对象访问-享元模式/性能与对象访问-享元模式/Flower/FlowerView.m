//
//  FlowerView.m
//  性能与对象访问-享元模式
//
//  Created by yFeii on 2019/8/29.
//  Copyright © 2019 yFeii. All rights reserved.
//

#import "FlowerView.h"

@implementation FlowerView

- (void)dealloc {
    
    
}

- (void)drawRect:(CGRect)rect {

    [self.image drawInRect:rect];
}

@end
