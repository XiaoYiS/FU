//
//  UIColor+gategory.h
//  我的微信
//
//  Created by apple-jd12 on 15/9/18.
//  Copyright (c) 2015年 hazel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (gategory)

//255
+ (UIColor *)colorWith255Red:(NSInteger)red
                    andgreed:(NSInteger)green
                     andBlue:(NSInteger)blue
                    andAlpha:(CGFloat)alpha;
//16进制
+ (UIColor *)colorWithHex:(long)hex
                 andAlpha:(CGFloat)alpha;

    



@end
