//
//  ViewController.h
//  BouncingBallDemo
//
//  Created by ahmedpro on 3/21/20.
//  Copyright © 2020 ahmedpro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UICollisionBehaviorDelegate>

@property (weak, nonatomic) IBOutlet UIView *orangeBall;
@property UIDynamicAnimator *animator;

@end

