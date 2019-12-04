//
//  ViewController.m
//  行为扩展-责任链模式
//
//  Created by yFeii on 2019/8/27.
//  Copyright © 2019 yFeii. All rights reserved.
//

#import "ViewController.h"
#import "Attackhandler.h"

#import "MagicaFireAttack.h"
#import "LightingAttack.h"
#import "SwordAttack.h"


#import "MetalArmor.h"
#import "CrystalShield.h"
#import "Avatar.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Attackhandler *avatar = [[Avatar alloc] init];
    
    Attackhandler *armor = [[MetalArmor alloc] init];
    armor.nextAttackhandler = avatar;
    
    Attackhandler *shield = [[CrystalShield alloc] init];
    shield.nextAttackhandler = armor;
    
    Attack *sword = [[SwordAttack alloc] init];
    Attack *magic = [[MagicaFireAttack alloc] init];
    Attack *light = [[LightingAttack alloc] init];

    [shield handleAttack:sword];
    [shield handleAttack:magic];
    [shield handleAttack:light];


}


@end
