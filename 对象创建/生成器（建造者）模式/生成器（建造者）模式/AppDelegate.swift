//
//  AppDelegate.swift
//  生成器（建造者）模式
//
//  Created by yFeii on 2019/10/4.
//  Copyright © 2019 yFeii. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    /*
     生成器模式
     将一个复杂对象的构建和它的表示分离，使得同样的构建过程创建不同的表示
     
     类图：
     指导者：Director,知道构建什么产品，并指导builder 来构建
     抽象生成器：生成器的抽象接口
     生成器：builder，知道如何构建产品
     */

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        OCPD()
        chan()
        return true
    }
    
    func chan() {
    
        /*
         指导者：Director
         生成器抽象类：carBuilder
         生成器：benzBuilder,bmwBuilder
         */
        let d = Director();
        d.getBenzModel().run()
        d.getBMWModel().run()
    }
    func OCPD() {
        
        /*
         指导者：ChasingGame
         生成器抽象类：CharacterBuilder
         生成器：StandardCharacterBuilder
         */
        let builder = StandardCharacterBuilder.init()
        let game = ChasingGame.init()
        let _ = game.createEnemy(builder)
        let _ = game.createPlayer(builder)
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

