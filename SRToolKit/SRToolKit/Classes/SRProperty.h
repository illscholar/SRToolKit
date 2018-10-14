//
//  SRProperty.h
//  SRToolKit
//
//  Created by illScholar on 2018/10/13.
//  Copyright © 2018年 illScholar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreGraphics/CoreGraphics.h>

NS_ASSUME_NONNULL_BEGIN

#pragma mark -
#pragma mark NSDictionary

#pragma mark -
#pragma mark UIColor
/**
 随机颜色

 @return UIColor
 */
FOUNDATION_EXPORT UIColor *SRRandomColor(void);

/**
 渐变色

 @param beginColor 开始颜色
 @param endColor 结束颜色
 @param height 高度
 @return UIColor
 */
FOUNDATION_EXPORT UIColor *SRGradientColor(UIColor *beginColor, UIColor *endColor, CGFloat height);

#pragma mark -
#pragma mark UIScreen
FOUNDATION_EXPORT CGRect SRScreenBounds(void);

FOUNDATION_EXPORT CGSize SRScreenSize(void);

FOUNDATION_EXPORT CGFloat SRScreenWidth(void);

FOUNDATION_EXPORT CGFloat SRScreenHeight(void);

FOUNDATION_EXPORT CGFloat SRScreenScale(void);

FOUNDATION_EXPORT CGSize SRDPISize(void);

NS_ASSUME_NONNULL_END
