//
//  FlowerFactory.m
//  性能与对象访问-享元模式
//
//  Created by yFeii on 2019/8/29.
//  Copyright © 2019 yFeii. All rights reserved.
//

#import "FlowerFactory.h"

@interface FlowerFactory()

@property (nonatomic, strong) NSMutableDictionary *flowerPool;

@end

@implementation FlowerFactory

- (UIView *)flowerViewWithType:(FlowerType)type{
    
    if (!self.flowerPool) {
        
        self.flowerPool = [[NSMutableDictionary alloc] init];
    }
    
    UIView *flowerView = [self.flowerPool objectForKey:@(type)];
    if (!flowerView) {
        
        NSString *imgName = nil;
        switch (type) {
            case kAnemone:
                
                imgName = @"anemone.png";
                break;
            case kCosmos:
                
                imgName = @"cosmos.png";
                break;
            case kGerberas:
                
                imgName = @"gerberas.png";
                break;
            case kHollyhock:
                
                imgName = @"hollyhock.png";
                break;
            case kJasmine:
                
                imgName = @"jasmine.png";
                break;
            case kZinnia:
                
                imgName = @"zinnia.png";
                break;
            default:
                break;
        }
        UIImage *image = [UIImage imageNamed:imgName];



        flowerView = [[FlowerView alloc] initWithImage:image];
        
        [self.flowerPool setObject:flowerView forKey:@(type)];
    }
    return flowerView;
}
@end
