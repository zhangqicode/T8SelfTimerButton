//
//  T8SelfTimerButton.h
//  T8SelfTimerButtonDemo
//
//  Created by 琦张 on 15/5/28.
//  Copyright (c) 2015年 琦张. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface T8SelfTimerButton : UIButton

@property (nonatomic,assign) NSInteger functionInterval;

- (void)startCoolDown;
- (void)destroy;

@end
