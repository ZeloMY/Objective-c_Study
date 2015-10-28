//
//  AppDelegate.m
//  Hello_World
//
//  Created by a004779 on 15/10/23.
//  Copyright © 2015年 zelo. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
//启动时调用方法  1  5
//进入后台执行  2 3
//从后台唤醒 使用  4 5
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // 应用程序启动后的可定制的覆盖点。
    NSLog(@"didFinishLaunchingWithOptions 方法1");
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    NSLog(@"applicationWillResignActive 方法2");
    
    //    当应用程序即将从活动状态移到非活动状态时，发送。这可能会出现某些类型的临时中断（如来电或短信）或当用户退出应用程序，它开始过渡到背景状态。
    //    / /使用此方法暂停当前任务，禁用定时器，和油门下的OpenGL ES的帧速率。游戏应该用这种方法来暂停游戏。
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    NSLog(@"applicationDidEnterBackground 方法3");
    //    / /使用这个方法来释放共享资源，保存用户数据，无效计时器，并储存足够的应用程序状态信息来恢复您的应用程序的当前状态的情况下，终止后。
    //    /如果您的应用程序支持后台执行，这种方法被称为替代applicationWillTerminate:当用户退出。
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    NSLog(@"applicationWillEnterForeground 方法4");
    //    被称为从背景过渡到非活动状态的一部分，在这里，你可以撤消对进入背景的许多更改。
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    NSLog(@"applicationDidBecomeActive 方法5");
    // 重新启动任何已暂停的任务（或尚未开始），而应用程序处于非活动状态。如果应用程序在后台，可以随意刷新用户界面。
}

- (void)applicationWillTerminate:(UIApplication *)application {
    NSLog(@"applicationWillTerminate 方法6");
    // 当应用程序即将终止时调用。如果适当的话，保存数据。又见applicationDidEnterBackground有：。
}

@end
