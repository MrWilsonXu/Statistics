//
//  ViewController.m
//  无侵入埋点
//
//  Created by Wilson on 2020/3/10.
//  Copyright © 2020 Wilson. All rights reserved.
//

#import "ViewController.h"
#import "Person+Play.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Person *p = [[Person alloc] init];
    p.basketball = @"kobe";
    NSLog(@"知名篮球运动员：%@", p.basketball);
}

- (IBAction)logAction:(UIButton *)sender {
    NSLog(@"点击了btn");
}

@end
