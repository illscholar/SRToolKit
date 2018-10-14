//
//  UINavigationController+SRExtension.m
//  SRToolKit
//
//  Created by illScholar on 2018/10/14.
//  Copyright © 2018年 illScholar. All rights reserved.
//

#import "UINavigationController+SRExtension.h"

@implementation UINavigationController (SRExtension)

- (void)srPushViewController:(UIViewController *)viewController transition:(UIViewAnimationTransition)transition {
    [UIView beginAnimations:nil context:NULL];
    [self pushViewController:viewController animated:NO];
    [UIView setAnimationDuration:0.5f];
    [UIView setAnimationBeginsFromCurrentState:YES];
    [UIView setAnimationTransition:transition forView:self.view cache:YES];
    [UIView commitAnimations];
}

- (nullable UIViewController *)srPopViewControllerTransition:(UIViewAnimationTransition)transition {
    [UIView beginAnimations:nil context:NULL];
    UIViewController *controller = [self popViewControllerAnimated:NO];
    [UIView setAnimationDuration:0.5f];
    [UIView setAnimationBeginsFromCurrentState:YES];
    [UIView setAnimationTransition:transition forView:self.view cache:YES];
    [UIView commitAnimations];
    return controller;
}
@end
