//
//  BaseNavController.m
//  ForU
//
//  Created by yihaiyang on 15/12/10.
//  Copyright © 2015年 yihaiyang. All rights reserved.
//

#import "BaseNavController.h"

@interface BaseNavController ()

@end

@implementation BaseNavController

//自定义nav，此方法在第一次使用这个类或其子类时自动调用
+ (void)initialize{
    if (self == [BaseNavController class]) {
        //获取外观
        UINavigationBar *bar = [UINavigationBar appearance];
        //设置背景色，背景图，左右按钮的颜色
        [bar setBackgroundColor:[UIColor colorWith255Red:255 andgreed:255 andBlue:255 andAlpha:1.0]];
        [bar setBackgroundImage:[UIImage imageNamed:@""] forBarMetrics:(UIBarMetricsDefault)];
        [bar setTintColor:[UIColor whiteColor]];
        //标题垂直的位置
        [bar setTitleVerticalPositionAdjustment:0 forBarMetrics:(UIBarMetricsDefault)];
        //设置文字的样式
        NSMutableDictionary *mDict = [NSMutableDictionary dictionary];
        mDict[NSFontAttributeName] = [UIFont boldSystemFontOfSize:18];
        mDict[NSForegroundColorAttributeName] = [UIColor whiteColor];
        [bar setBarStyle:(UIBarStyleBlack)];
        
    }
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // 还原背景色
    UIImage *image = [self.tabBarItem.selectedImage imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];
    self.tabBarItem.selectedImage = image;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
