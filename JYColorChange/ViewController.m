//
//  ViewController.m
//  JYColorChange
//
//  Created by JY on 2015/10/8.
//  Copyright © 2015年 JY. All rights reserved.
//

#import "ViewController.h"
#import "JYColorChange.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //Loading Label
    self.loadingLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.view.frame.size.width / 2 - 50 , self.view.frame.size.height / 2 - 40, 100, 50)];
    self.loadingLabel.text = @"Loading...";
    self.loadingLabel.textAlignment = 1;
    self.loadingLabel.textColor = [UIColor whiteColor];
    [self.view addSubview:self.loadingLabel];

    JYColorChange *jyColorChange = [[JYColorChange alloc] init];
    
    jyColorChange.gradientLayer.frame = self.loadingLabel.frame;
    [self.view.layer addSublayer:jyColorChange.gradientLayer];
    
    jyColorChange.gradientLayer.mask = self.loadingLabel.layer;
    self.loadingLabel.frame = jyColorChange.gradientLayer.bounds;
}


@end
