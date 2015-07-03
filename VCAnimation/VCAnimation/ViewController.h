//
//  ViewController.h
//  VCAnimation
//
//  Created by 胡金友 on 15/7/3.
//  Copyright (c) 2015年 胡金友. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PresentAnimation.h"
#import "DismissAnimation.h"
#import "InterAnimation.h"
#import "CubeAnimation.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) PresentAnimation *presentAnimation;
@property (strong, nonatomic) DismissAnimation *dismissAnimation;
@property (strong, nonatomic) InterAnimation *interactionAnimation;
@property (strong, nonatomic) CubeAnimation *cubeAnimation;

@end

