//
//  ExtrinsicFlowerState.h
//  性能与对象访问-享元模式
//
//  Created by yFeii on 2019/8/29.
//  Copyright © 2019 yFeii. All rights reserved.
//

#ifndef ExtrinsicFlowerState_h
#define ExtrinsicFlowerState_h
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef struct {
    
    UIView *flowerView;
    CGRect area;
} ExtrinsicFlowerState, *ef;

#endif /* ExtrinsicFlowerState_h */
