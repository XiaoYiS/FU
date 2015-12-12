//
//  AppDelegate+Category.m
//  ForU
//
//  Created by yihaiyang on 15/12/10.
//  Copyright © 2015年 yihaiyang. All rights reserved.
//

#import "AppDelegate+Category.h"
#import <AFNetworkActivityIndicatorManager.h>

@implementation AppDelegate (Category)

- (void)initializeWithApplication:(UIApplication *)application{
    //注册DDLog 取代NSLog
    [DDLog addLogger:[DDASLLogger sharedInstance]];
    [DDLog addLogger:[DDTTYLogger sharedInstance]];
    [[DDTTYLogger sharedInstance] setColorsEnabled:YES];
    //电池条显示网络活动
    [[AFNetworkActivityIndicatorManager sharedManager] setEnabled:YES];
    //检测网络状态
    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        DDLogVerbose(@"Reacgability:%@",AFStringFromNetworkReachabilityStatus(status));
        switch (status) {
            case AFNetworkReachabilityStatusUnknown: {
                
                break;
            }
            case AFNetworkReachabilityStatusNotReachable: {
                self.onLine = NO;
                break;
            }
            case AFNetworkReachabilityStatusReachableViaWWAN: {
                self.onLine = YES;
                break;
            }
            case AFNetworkReachabilityStatusReachableViaWiFi: {
                self.onLine = YES;
                break;
            }
            default: {
                break;
            }
        }
    }];
    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
}
@end
