//
//  FlyweightView.m
//  性能与对象访问-享元模式
//
//  Created by yFeii on 2019/8/29.
//  Copyright © 2019 yFeii. All rights reserved.
//

#import "FlyweightView.h"

@implementation FlyweightView
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    
    for (NSValue *stateValue in self.flowerList)
    {
        ef state;
        [stateValue getValue:&state];
//
//        UIView *flowerView = state->flowerView;
//        CGRect area = state->area;
//
//        [flowerView drawRect:area];
    }
}

@end
