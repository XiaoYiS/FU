//
//  NSObject+Common.h
//  ForU
//
//  Created by yihaiyang on 15/12/10.
//  Copyright © 2015年 yihaiyang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Common)

//显示失败提示
- (void)showErrorMsg:(NSString *)msg;
//显示成功提示
- (void)showSuccessMsg:(NSString *)msg;
//显示忙
- (void)showProgress;
//显示隐藏提示
- (void)hideProgress; 
@end
