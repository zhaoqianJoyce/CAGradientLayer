//
//  ViewController.m
//  fadeView
//
//  Created by Joyce on 18/4/3.
//  Copyright © 2018年 Joyce. All rights reserved.
//

#import "ViewController.h"
#import "fadeStringView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    fadeStringView *fadeString = [[fadeStringView alloc] initWithFrame:CGRectMake(0, 0, 400, 400)];
    fadeString.center = self.view.center;
    fadeString.text = @"设计文本横向渐变消失控件";
    [self.view addSubview:fadeString];
    
    [fadeString fadeRightWithDuration:3.0f animated:YES];
    
}

@end
