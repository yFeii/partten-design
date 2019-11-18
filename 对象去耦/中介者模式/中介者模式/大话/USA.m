//
//  USA.m
//  中介者模式
//
//  Created by yFeii on 2019/9/29.
//  Copyright © 2019 yFeii. All rights reserved.
//

#import "USA.h"

@implementation USA

- (void)declare:(NSString *)msg {
    NSLog(@"USA Declare %@",msg);
    [self.mediator declare:msg country:self];
}

- (void)getMsg:(NSString *)msg {
    
    NSLog(@"USA GET MSG %@",msg);
}
@end
