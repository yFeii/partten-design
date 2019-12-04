//
//  FlowerFactory.h
//  性能与对象访问-享元模式
//
//  Created by yFeii on 2019/8/29.
//  Copyright © 2019 yFeii. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FlowerView.h"

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSUInteger, FlowerType) {
    kAnemone,
    kCosmos,
    kGerberas,
    kHollyhock,
    kJasmine,
    kZinnia,
    kTotalNumberOfFlowerType,
};

@interface FlowerFactory : NSObject

- (UIView *)flowerViewWithType:(FlowerType)type;
@end

NS_ASSUME_NONNULL_END
