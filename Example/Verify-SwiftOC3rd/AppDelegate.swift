//
//  AppDelegate.swift
//  Verify-SwiftOC3rd
//
//  Created by wangcccong@foxmail.com on 06/30/2017.
//  Copyright (c) 2017 wangcccong@foxmail.com. All rights reserved.
//

import UIKit
import BaiduMapAPI_Base
import BaiduMapAPI_Map

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var bmkManager: BMKMapManager?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        bmkManager = BMKMapManager()

        if BMKMapManager.setCoordinateTypeUsedInBaiduMapSDK(BMK_COORDTYPE_BD09LL) {
            NSLog("经纬度设置成功")
        } else {
            NSLog("经纬度设置失败")
        }

        let ret = bmkManager?.start("rMtBpzV7kxIRHssuyXqyr22NmQxhsEoe", generalDelegate: self)
        if ret == false {
            NSLog("manager start failed")
        }
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

}

extension AppDelegate: BMKGeneralDelegate {
    func onGetNetworkState(_ iError: Int32) {
        if 0 == iError {
            NSLog("联网成功")
        } else {
            NSLog("联网失败，错误代码：Error\(iError)")
        }
    }

    func onGetPermissionState(_ iError: Int32) {
        if 0 == iError {
            NSLog("授权成功")
        } else {
            NSLog("授权失败，错误代码\(iError)")
        }
    }
}
