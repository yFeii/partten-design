//
//  FlyweightView.h
//  性能与对象访问-享元模式
//
//  Created by yFeii on 2019/8/29.
//  Copyright © 2019 yFeii. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
//类似 tableView
@interface FlyweightView : UIView

@property (nonatomic, strong) NSArray *flowerList;

@end

NS_ASSUME_NONNULL_END
