//
//  ViewController.m
//  T8SelfTimerButtonDemo
//
//  Created by 琦张 on 15/5/28.
//  Copyright (c) 2015年 琦张. All rights reserved.
//

#import "ViewController.h"
#import "T8SelfTimerButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    T8SelfTimerButton *btn = [T8SelfTimerButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 200, 100);
    btn.backgroundColor = [UIColor grayColor];
    [btn addTarget:self action:@selector(gogogo:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)gogogo:(id)sender
{
    T8SelfTimerButton *btn = (T8SelfTimerButton *)sender;
    [btn startCoolDown];
}

@end
