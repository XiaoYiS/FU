//
//  AppDelegate.h
//  ForU
//
//  Created by yihaiyang on 15/12/10.
//  Copyright © 2015年 yihaiyang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property(nonatomic,getter=isOnLine) BOOL onLine; //网络状态

@end

