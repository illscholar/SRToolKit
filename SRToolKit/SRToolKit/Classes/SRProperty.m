//
//  SRProperty.m
//  SRToolKit
//
//  Created by illScholar on 2018/10/13.
//  Copyright © 2018年 illScholar. All rights reserved.
//

#import "SRProperty.h"

#pragma mark -
#pragma mark NSDictionary

#pragma mark -
#pragma mark UIColor
UIColor *SRRandomColor(void) {
    NSInteger redValue = arc4random() % 255;
    NSInteger greenValue = arc4random() % 255;
    NSInteger blueValue = arc4random() % 255;
    return [UIColor colorWithRed:redValue / 255.0f green:greenValue / 255.0f blue:blueValue / 255.0f alpha:1.0f];
}

UIColor *SRGradientColor(UIColor *beginColor, UIColor *endColor, CGFloat height) {
    CGSize size = CGSizeMake(1.f, height);
    UIGraphicsBeginImageContextWithOptions(size, NO, 0);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    NSArray *colors = @[(id)beginColor.CGColor, (id)endColor.CGColor];
    CGGradientRef gradient = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)colors, NULL);
    CGContextDrawLinearGradient(context, gradient, CGPointMake(0, 0), CGPointMake(0, size.height), 0);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    CGGradientRelease(gradient);
    CGColorSpaceRelease(colorSpace);
    UIGraphicsEndImageContext();
    
    return [UIColor colorWithPatternImage:image];
}

#pragma mark -
#pragma mark UIScreen
CGRect SRScreenBounds(void) {
    return [[UIScreen mainScreen] bounds];
}

CGSize SRScreenSize(void) {
    return SRScreenBounds().size;
}

CGFloat SRScreenWidth(void) {
    return SRScreenSize().width;
}

CGFloat SRScreenHeight(void) {
    return SRScreenSize().height;
}

CGFloat SRScreenScale(void) {
    return [UIScreen mainScreen].scale;
}

CGSize SRDPISize(void) {
    CGSize size = SRScreenSize();
    CGFloat scale = SRScreenScale();
    return CGSizeMake(size.width * scale, size.height * scale);
}
