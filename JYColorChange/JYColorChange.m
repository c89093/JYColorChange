//
//  JYColorChange.m
//  JYColorChange
//
//  Created by JY on 2015/10/8.
//  Copyright © 2015年 JY. All rights reserved.
//

#import "JYColorChange.h"

@implementation JYColorChange
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        //漸變層
        self.gradientLayer = [CAGradientLayer layer];
        
        //設置顏色
        self.gradientLayer.colors = @[(id)[self randomColor].CGColor, (id)[self randomColor].CGColor,(id)[self randomColor].CGColor];
        [self.layer addSublayer:self.gradientLayer];

        //Timer to set change colors
        CADisplayLink *displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(ColorChange)];
        [displayLink addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSDefaultRunLoopMode];
    }
    return self;
}

- (UIColor *)randomColor {
    CGFloat colorRed = arc4random_uniform(256) / 200.0;
    CGFloat colorGreen = arc4random_uniform(256) / 115.0;
    CGFloat colorBlue = arc4random_uniform(256) / 255.0;
    return [UIColor colorWithRed:colorRed green:colorGreen blue:colorBlue alpha:1];
}

- (void)ColorChange {
    self.gradientLayer.colors = @[(id)[self randomColor].CGColor,
                                  (id)[self randomColor].CGColor,
                                  (id)[self randomColor].CGColor,
                                  (id)[self randomColor].CGColor,
                                  (id)[self randomColor].CGColor];
}

@end
