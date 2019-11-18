//
//  AppDelegate.m
//  中介者模式
//
//  Created by yFeii on 2019/9/29.
//  Copyright © 2019 yFeii. All rights reserved.
//

#import "AppDelegate.h"
#import "UnitedNationsSecurityCouncil.h"

#import "Purchase.h"
#import "Stock.h"
#import "Sale.h"

#import "Mediator.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    UnitedNationsSecurityCouncil *mediator = [[UnitedNationsSecurityCouncil alloc] init];
    
    USA *u = [[USA alloc] init];
    Iraq *i = [[Iraq alloc] init];
    
    mediator.colleague1 = u;
    mediator.colleague2 = i;

    u.mediator = mediator;
    i.mediator = mediator;

    [u declare:@"不准研发核武器，否则要发动战争"];
    [i declare:@"我们没有核武器，也不怕侵略"];

    
    
//    //采购100 台电脑
//    NSLog(@"------ 采购人员采购了100台电脑 ------");
//    Purchase *purchase = [Purchase new];
//    [purchase buyIBMComputer:100];
//
//    //卖出1台
//    NSLog(@"------ 销售人员销售电脑 ------");
//    Sale *sale = [Sale new];
//    [sale sellIBMComputer:1];
//
//    //获得库存情况
//    NSLog(@"------ 库存人员清库存 ------");
//    Stock *stock = [Stock new];
//    [stock clearStock];

    /*
     2019-09-30 09:22:44.993856+0800 中介者模式[22932:4739863] ------ 采购人员采购了100台电脑 ------
     2019-09-30 09:22:44.994128+0800 中介者模式[22932:4739863] IBM电脑的销售情况为14台
     2019-09-30 09:22:44.994263+0800 中介者模式[22932:4739863] 当前销量不好，折半采购IBM电脑100台
     2019-09-30 09:22:49.121449+0800 中介者模式[22932:4739863] 当前库存量为：150
     2019-09-30 09:22:49.121649+0800 中介者模式[22932:4739863] ------ 销售人员销售电脑 ------
     2019-09-30 09:22:49.121810+0800 中介者模式[22932:4739863] 当前库存量为：150
     2019-09-30 09:22:49.121933+0800 中介者模式[22932:4739863] 销售了1台
     2019-09-30 09:22:49.122030+0800 中介者模式[22932:4739863] 当前库存量为：149
     2019-09-30 09:22:49.122098+0800 中介者模式[22932:4739863] ------ 库存人员清库存 ------
     2019-09-30 09:22:49.122163+0800 中介者模式[22932:4739863] 当前库存量为：149,需要打折处理
     2019-09-30 09:22:49.122289+0800 中介者模式[22932:4739863] 不在采购IBM电脑
     2019-09-30 09:22:49.122433+0800 中介者模式[22932:4739863] 当前库存量为：149
     2019-09-30 09:22:49.122713+0800 中介者模式[22932:4739863] 打折处理149台
     */
    
    
    Mediator *m = [Mediator new];
    Purchase *purchase = [Purchase new];
    purchase.mediator = m;
    
    Sale *sale = [Sale new];
    sale.mediator = m;
    
    Stock *stock = [Stock new];
    stock.mediator = m;

    m.purchase = purchase;
    m.sale = sale;
    m.stock = stock;
       
    NSLog(@"------ 采购人员采购了100台电脑 ------");
    [purchase buyIBMComputer:100];
       
    NSLog(@"------ 销售人员销售电脑 ------");
    [sale sellIBMComputer:1];
    
    NSLog(@"------ 库存人员清库存 ------");
    [stock clearStock];

    
    // Override point for customization after application launch.
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
