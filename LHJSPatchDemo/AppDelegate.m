//
//  AppDelegate.m
//  LHJSPatchDemo
//
//  Created by cheyipai on 16/7/4.
//  Copyright © 2016年 cheyipai. All rights reserved.
//

#import "AppDelegate.h"
#import <JSPatch/JSPatch.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self JsPatchSetup];
    
    
    return YES;
}

- (void)JsPatchSetup{
    //531579215c59a204
    //    [JSPatch startWithAppKey:@"531579215c59a204"];
    //    [JSPatch sync];
    
    /*
     + (void)testScriptInBundle;
     用于发布前测试脚本，调用后，会在当前项目的 bundle 里寻找 main.js 文件执行
     不能与 `+startWithAppKey:` 一起调用，测试完成后需要删除。
     */
    
    [JSPatch testScriptInBundle];
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
