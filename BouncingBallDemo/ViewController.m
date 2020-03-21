//
//  ViewController.m
//  BouncingBallDemo
//
//  Created by ahmedpro on 3/21/20.
//  Copyright © 2020 ahmedpro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController {
    BOOL flag;
}

- (void)viewDidLoad {
    
    flag = YES;
    
    [super viewDidLoad];
    _animator = [[UIDynamicAnimator alloc] initWithReferenceView: self.view];
    
    [self myAnimation];
}

- (void) myAnimation {
    UIGravityBehavior *grav = [[UIGravityBehavior alloc] initWithItems: @[_orangeBall]];
    
    UICollisionBehavior *coll = [[UICollisionBehavior alloc] initWithItems: @[_orangeBall]];
    [coll setCollisionDelegate: self];
    [coll setTranslatesReferenceBoundsIntoBoundary: YES];
    
    UIDynamicItemBehavior *item = [[UIDynamicItemBehavior alloc] initWithItems: @[_orangeBall]];
    item.elasticity = 0.75;
    
    [self.animator addBehavior: grav];
    [self.animator addBehavior: coll];
    [self.animator addBehavior: item];
}

- (void)collisionBehavior:(UICollisionBehavior *)behavior endedContactForItem:(id<UIDynamicItem>)item withBoundaryIdentifier:(id<NSCopying>)identifier {
    
    if (flag) {
        self.orangeBall.backgroundColor = [UIColor blueColor];
        flag = NO;
    } else {
        self.orangeBall.backgroundColor = [UIColor orangeColor];
        flag = YES;
    }
}


@end
