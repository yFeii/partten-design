//
//  Iraq.m
//  中介者模式
//
//  Created by yFeii on 2019/9/29.
//  Copyright © 2019 yFeii. All rights reserved.
//

#import "Iraq.h"

@implementation Iraq

- (void)declare:(NSString *)msg {
    NSLog(@"Iraq Declare %@",msg);
    [self.mediator declare:msg country:self];
}

- (void)getMsg:(NSString *)msg {
    
    NSLog(@"Iraq GET MSG %@",msg);
}
@end
