//
//  AbbstractColleague.h
//  中介者模式
//
//  Created by yFeii on 2019/9/30.
//  Copyright © 2019 yFeii. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractMediator.h"

NS_ASSUME_NONNULL_BEGIN

@interface AbbstractColleague : NSObject

@property (nonatomic, weak) AbstractMediator *mediator;
@end

NS_ASSUME_NONNULL_END
