//
//  AppDelegate.m
//  ForU
//
//  Created by yihaiyang on 15/12/10.
//  Copyright © 2015年 yihaiyang. All rights reserved.
//

#import "AppDelegate.h"
#import "WelcomeController.h"
#import "BaseTabBarController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self setStart];
    return YES;
}

//设置启动页
- (void)setStart{
    /////
    NSDictionary  *infoDict = [[NSBundle mainBundle]infoDictionary];
    
    //    NSLog(@"infoDict:%@",infoDict);
    NSString *key = @"CFBundleShortVersionString";
    
    NSString *currentVersion = infoDict[key];
    NSString *runVersion = [[NSUserDefaults standardUserDefaults] stringForKey:key];
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];
    
    if (runVersion == nil || ![runVersion isEqualToString:currentVersion]) {
        NSLog(@"欢迎界面");
        WelcomeController *vc = [WelcomeController new];
        self.window.rootViewController = vc;
        [[NSUserDefaults standardUserDefaults] setValue:currentVersion forKey:key];
    }else{
        NSLog(@"显示主页面");
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        BaseTabBarController *vc = [storyboard instantiateViewControllerWithIdentifier:@"BaseTabBarController"];
        self.window.rootViewController = vc;
        
    }
    
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
