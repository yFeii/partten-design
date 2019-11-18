//
//  AbstractMediator.h
//  中介者模式
//
//  Created by yFeii on 2019/9/30.
//  Copyright © 2019 yFeii. All rights reserved.
//

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN
@class Purchase;
@class Stock;
@class Sale;

@interface AbstractMediator : NSObject

@property (nonatomic, strong) Purchase *purchase;

@property (nonatomic, strong) Stock *stock;

@property (nonatomic, strong) Sale *sale;


- (void)execute:(SEL)sel param:(id)param;
@end

NS_ASSUME_NONNULL_END
