//
//  UIColor+gategory.m
//  我的微信
//
//  Created by apple-jd12 on 15/9/18.
//  Copyright (c) 2015年 hazel. All rights reserved.
//

#import "UIColor+gategory.h"

@implementation UIColor (gategory)




//255
+ (UIColor *)colorWith255Red:(NSInteger)red
                    andgreed:(NSInteger)green
                     andBlue:(NSInteger)blue
                    andAlpha:(CGFloat)alpha{
    return  [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
}
//16进制
+ (UIColor *)colorWithHex:(long)hex
                 andAlpha:(CGFloat)alpha{
    //0X3A5B6C---colorWithHex:0X3A5B6C andAlpha:1.0
    
    float red = ((float)((hex & 0XFF0000)>>16))/255.0;
    float green = ((float)((hex & 0X00FF00)>>8))/255.0;
    float blue = ((float)(hex & 0X0000FF))/255.0;
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
    
}
@end
