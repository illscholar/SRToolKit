//
//  UINavigationController+SRExtension.h
//  SRToolKit
//
//  Created by illScholar on 2018/10/14.
//  Copyright © 2018年 illScholar. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UINavigationController (SRExtension)

#pragma mark -
#pragma mark UIViewAnimationTransition
- (void)srPushViewController:(UIViewController *)viewController transition:(UIViewAnimationTransition)transition;
- (nullable UIViewController *)srPopViewControllerTransition:(UIViewAnimationTransition)transition;

@end

NS_ASSUME_NONNULL_END
