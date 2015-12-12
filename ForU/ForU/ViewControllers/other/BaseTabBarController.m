//
//  BaseTabBarController.m
//  ForU
//
//  Created by yihaiyang on 15/12/10.
//  Copyright © 2015年 yihaiyang. All rights reserved.
//

#import "BaseTabBarController.h"

@interface BaseTabBarController ()

@end

@implementation BaseTabBarController

+ (void)initialize{
    if (self == [BaseTabBarController class]) {
        UITabBar *tabBar = [UITabBar appearance];
        //设置背景图
        [tabBar setBackgroundImage:[UIImage imageNamed:@""]];
        //设置被选中的背景图
        [tabBar setSelectionIndicatorImage:[UIImage imageNamed:@""]];
        //tabBarItem的风格
        UITabBarItem *barItem = [UITabBarItem appearance];
        //设置文字的位置
        [barItem setTitlePositionAdjustment:(UIOffsetMake(0, -4))];//上调4px
        //设置item中文字的普通样式
        NSMutableDictionary *normalAttributes = [NSMutableDictionary dictionary];
        normalAttributes[NSForegroundColorAttributeName] = [UIColor colorWith255Red:128 andgreed:128 andBlue:128 andAlpha:1.0];
        normalAttributes[NSFontAttributeName] = [UIFont boldSystemFontOfSize:11];
        
        [barItem setTitleTextAttributes:normalAttributes forState:UIControlStateNormal];
        //设置item中文字被选中的样式
        NSMutableDictionary *selectedAttributes = [NSMutableDictionary dictionary];
        selectedAttributes[NSForegroundColorAttributeName] = [UIColor colorWith255Red:26 andgreed:178 andBlue:10 andAlpha:1.0];//
        selectedAttributes[NSFontAttributeName] = [UIFont boldSystemFontOfSize:11];
        
        [barItem setTitleTextAttributes:selectedAttributes forState:UIControlStateSelected];
        //设置图片的颜色

        
    }
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
