//
//  ShowViewController.m
//  MSPagesSelector
//
//  Created by mr.scorpion on 16/7/15.
//  Copyright © 2016年 mr.scorpion. All rights reserved.
//

#import "ShowViewController.h"

@interface ShowViewController ()
@property (nonatomic, strong) UILabel *contentLabel;
@end

@implementation ShowViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [self randomColor];
    
    _contentLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.bounds), 200)];
    _contentLabel.center = self.view.center;
    _contentLabel.textColor = [UIColor redColor];
    _contentLabel.textAlignment = NSTextAlignmentCenter;
    _contentLabel.text = self.content;
    [self.view addSubview:_contentLabel];
}
- (UIColor *)randomColor
{
    static BOOL seeded = NO;
    if(!seeded) {
        seeded = YES;
        srandom((unsigned)time(NULL));
    }
    CGFloat red = (CGFloat)random()/(CGFloat)RAND_MAX;
    CGFloat blue = (CGFloat)random()/(CGFloat)RAND_MAX;
    CGFloat green = (CGFloat)random()/(CGFloat)RAND_MAX;
    return [UIColor colorWithRed:red green:green blue:blue alpha:1.0f];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
