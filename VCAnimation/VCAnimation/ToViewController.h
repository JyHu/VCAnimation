//
//  ToViewController.h
//  VCAnimation
//
//  Created by 胡金友 on 15/7/3.
//  Copyright (c) 2015年 胡金友. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ToViewControllerDelegate <NSObject>

- (void)willDismissViewController:(UIViewController *)viewController;

@end

@interface ToViewController : UIViewController

@property (assign, nonatomic) id<ToViewControllerDelegate> delegate;

@end
