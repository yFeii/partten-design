//
//  ViewController.m
//  性能与对象访问-享元模式
//
//  Created by yFeii on 2019/8/29.
//  Copyright © 2019 yFeii. All rights reserved.
//

#import "ViewController.h"
#import "FlowerFactory.h"
#import "FlyweightView.h"
#import "objc/runtime.h"

/*
 实现享元模式需要两个关键组件，通常是可共享的享元对象和保存他们的池
 比如：iOS tableView 线程池
 */

@interface ViewController ()

@property (nonatomic, strong)FlyweightView *tbView;
@end

@implementation ViewController


- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    self.tbView.frame = self.view.bounds;
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.tbView = [[FlyweightView alloc] initWithFrame:CGRectZero];
    self.tbView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.tbView];
    // Do any additional setup after loading the view.
    //创建工厂，构造花朵列表
    FlowerFactory *factory = [[FlowerFactory  alloc] init];
    NSMutableArray *flowerList = [[NSMutableArray alloc] initWithCapacity:500];
    for (int i = 0; i<500; i++) {
        //从工厂中获取一个共享的花朵享元对象示例
        FlowerType flowerType = arc4random()% kTotalNumberOfFlowerType;
        UIView *flowerView = [factory flowerViewWithType:flowerType];
        //设置花朵的显示位置和区域
        CGRect screenBounds = [UIScreen mainScreen].bounds;
        CGFloat x = (arc4random() % (NSInteger)screenBounds.size.width);
        CGFloat y = (arc4random() % (NSInteger)screenBounds.size.height);
        
        NSInteger minSize = 10;
        NSInteger maxSize = 50;
        CGFloat size = (arc4random() % (maxSize-minSize+1))+minSize;

        //把花朵的属性赋给一个外在状态对象
        ef extrinsicState = (ef)malloc(sizeof(ExtrinsicFlowerState));
        extrinsicState->flowerView = flowerView;
        extrinsicState->area = CGRectMake(x, y, size, size);
        //把外在花朵状态添加到花朵列表
//        [flowerList addObject:(__bridge id _Nonnull)(extrinsicState)];
        [flowerList addObject:[NSValue valueWithBytes:&extrinsicState objCType:@encode(ExtrinsicFlowerState)]];
    }
    self.tbView.flowerList = flowerList;

}


@end
