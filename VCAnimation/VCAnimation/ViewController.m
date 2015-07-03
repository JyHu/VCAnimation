//
//  ViewController.m
//  VCAnimation
//
//  Created by 胡金友 on 15/7/3.
//  Copyright (c) 2015年 胡金友. All rights reserved.
//

#import "ViewController.h"
#import "ToViewController.h"

@interface ViewController () <UIViewControllerTransitioningDelegate, ToViewControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _presentAnimation = [[PresentAnimation alloc] init];
    _dismissAnimation = [[DismissAnimation alloc] init];
    _interactionAnimation = [[InterAnimation alloc] init];
    _cubeAnimation = [[CubeAnimation alloc] init];
    
    self.view.backgroundColor = [UIColor redColor];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    ToViewController *vc = [[ToViewController alloc] init];
    vc.delegate = self;
    vc.transitioningDelegate = self;
    [self.interactionAnimation wireToViewController:vc];
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)willDismissViewController:(UIViewController *)viewController
{
    [viewController dismissViewControllerAnimated:YES completion:nil];
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source
{
    return self.presentAnimation;
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed
{
    return self.dismissAnimation;
}

- (id<UIViewControllerInteractiveTransitioning>)interactionControllerForDismissal:(id<UIViewControllerAnimatedTransitioning>)animator
{
    return self.interactionAnimation.interacting ? self.interactionAnimation : nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
