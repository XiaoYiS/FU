//
//  LoginCell.m
//  ForU
//
//  Created by yihaiyang on 15/12/12.
//  Copyright © 2015年 yihaiyang. All rights reserved.
//

#import "LoginCell.h"

@implementation LoginCell


- (ZRImageView *)iconView {
    if(_iconView == nil) {
        _iconView = [[ZRImageView alloc] init];
        [self.contentView addSubview:_iconView];
        [_iconView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(CGSizeMake(70, 70));
            make.centerY.mas_equalTo(0);
        }];
    }
    return _iconView;
}

- (UILabel *)nameLb {
    if(_nameLb == nil) {
        _nameLb = [[UILabel alloc] init];
//        _nameLb.textAlignment = NSTextAlignmentLeft;
        [self.contentView addSubview:_nameLb];
        [_nameLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(self.iconView.mas_right).mas_equalTo(10);
//            make.topMargin.mas_equalTo(self.iconView.mas_topMargin).mas_equalTo(0);
            make.centerY.mas_equalTo(0);
//            make.right.mas_equalTo(-10);
        }];
    }
    return _nameLb;
}

//- (UILabel *)idLb {
//    if(_idLb == nil) {
//        _idLb = [[UILabel alloc] init];
//        [self.contentView addSubview:_idLb];
//        [_idLb mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.left.mas_equalTo(self.iconView.mas_right).mas_equalTo(10);
//            make.bottom.mas_equalTo(-10);
//            make.right.mas_equalTo(-10);
//        }];
//    }
//    return _idLb;
//}
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
    }
    return self;
}
@end
