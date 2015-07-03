//
//  InterAnimation.h
//  VCAnimation
//
//  Created by 胡金友 on 15/7/3.
//  Copyright (c) 2015年 胡金友. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InterAnimation : UIPercentDrivenInteractiveTransition

@property (nonatomic, assign) BOOL interacting;
@property (nonatomic, assign) BOOL shouldComplete;
@property (nonatomic, strong) UIViewController *presentingVC;

- (void)wireToViewController:(UIViewController *)viewController;

@end
