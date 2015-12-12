//
//  NSObject+Common.m
//  ForU
//
//  Created by yihaiyang on 15/12/10.
//  Copyright © 2015年 yihaiyang. All rights reserved.
//

#import "NSObject+Common.h"

#define kToastDuration  1
@implementation NSObject (Common)

- (UIView *)currentView{
    UIViewController *controller = [[[UIApplication sharedApplication] keyWindow] rootViewController];
    if ([controller isKindOfClass:[UITabBarController class]]) {
        controller = [(UITabBarController *)controller selectedViewController];
    }
    if ([controller isKindOfClass:[UINavigationController class]]) {
        controller = [(UINavigationController *)controller visibleViewController];
    }
    return controller.view;
}
//显示失败
- (void)showErrorMsg:(NSString *)msg{
    [self hideProgress];
    MBProgressHUD *progressHUD = [MBProgressHUD showHUDAddedTo:[self currentView] animated:YES];
    progressHUD.mode = MBProgressHUDModeText;
    progressHUD.labelText = msg;
    [progressHUD hide:YES afterDelay:kToastDuration];
    
}
//显示成功
- (void)showSuccessMsg:(NSString *)msg{
    [self hideProgress];
    MBProgressHUD *progressHUD = [MBProgressHUD showHUDAddedTo:[self currentView] animated:YES];
    progressHUD.mode = MBProgressHUDModeText;
    progressHUD.labelText = msg;
    [progressHUD hide:YES afterDelay:kToastDuration];
}
//显示忙
- (void)showProgress{
    MBProgressHUD *progressHUD = [MBProgressHUD showHUDAddedTo:[self currentView] animated:YES];
    [progressHUD hide:YES afterDelay:kToastDuration];
}
//隐藏提示
- (void)hideProgress{
    [MBProgressHUD hideAllHUDsForView:[self currentView] animated:YES];
}
@end
