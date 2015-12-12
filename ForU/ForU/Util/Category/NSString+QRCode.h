//
//  NSString+QRCode.h
//  ForU
//
//  Created by yihaiyang on 15/12/10.
//  Copyright © 2015年 yihaiyang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (QRCode)
- (UIImage *)imageForQRCode:(CGFloat)width;
@end
