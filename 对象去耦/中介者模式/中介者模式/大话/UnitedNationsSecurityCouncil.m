//
//  UnitedNationsSecurityCouncil.m
//  中介者模式
//
//  Created by yFeii on 2019/9/29.
//  Copyright © 2019 yFeii. All rights reserved.
//

#import "UnitedNationsSecurityCouncil.h"

@implementation UnitedNationsSecurityCouncil

- (void)declare:(NSString *)msg country:(Country *)country {
    
    if ([country isKindOfClass:USA.class]) {
        
        [self.colleague2 getMsg:msg];
    }else{
        [self.colleague1 getMsg:msg];
    }
}
@end
