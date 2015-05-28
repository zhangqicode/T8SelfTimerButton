//
//  T8SelfTimerButton.m
//  T8SelfTimerButtonDemo
//
//  Created by 琦张 on 15/5/28.
//  Copyright (c) 2015年 琦张. All rights reserved.
//

#import "T8SelfTimerButton.h"

@interface T8SelfTimerButton ()

@property (nonatomic) NSTimer *timer;
@property (nonatomic,assign) NSInteger leftInterval;

@end

@implementation T8SelfTimerButton

+ (UIButton *)buttonWithType:(UIButtonType)buttonType
{
    T8SelfTimerButton *button = [super buttonWithType:buttonType];
    button.functionInterval = 5;
    [button setTitle:NSLocalizedString(@"Get verify code", nil) forState:UIControlStateNormal];
    return button;
}

#pragma mark - method
- (void)timeReduce
{
    if (self.leftInterval>0) {
        [self setTitle:[NSString stringWithFormat:@"%@ (%ld)",NSLocalizedString(@"Resend", nil),(long)self.leftInterval] forState:UIControlStateNormal];
        self.leftInterval--;
    }else{
        [self.timer invalidate];
        self.timer = nil;
        self.enabled = YES;
        [self setTitle:NSLocalizedString(@"Get verify code", nil) forState:UIControlStateNormal];
    }
}

- (void)startCoolDown
{
    self.enabled = NO;
    self.leftInterval = self.functionInterval;
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timeReduce) userInfo:nil repeats:YES];
    [self.timer fire];
}

- (void)destroy
{
    [self.timer invalidate];
    self.timer = nil;
    self.enabled = YES;
    [self setTitle:NSLocalizedString(@"Get verify code", nil) forState:UIControlStateNormal];
}

@end
