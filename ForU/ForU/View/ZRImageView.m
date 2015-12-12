//
//  ZRImageView.m
//  ForU
//
//  Created by yihaiyang on 15/12/12.
//  Copyright © 2015年 yihaiyang. All rights reserved.
//

#import "ZRImageView.h"

@implementation ZRImageView

- (instancetype)init{
    if (self = [super init]) {
        _imageView = [UIImageView new];
        [self addSubview:_imageView];
        //按比例缩放，充满容易视图
        _imageView.contentMode = 2;
        [_imageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(0);
        }];
        //当前视图容易减掉超出自身的区域
        self.clipsToBounds = YES;
    }
    return self;
}

@end
