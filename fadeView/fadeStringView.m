//
//  fadeStringView.m
//  fadeView
//
//  Created by Joyce on 18/4/3.
//  Copyright © 2018年 Joyce. All rights reserved.
//

#import "fadeStringView.h"

@interface fadeStringView ()

/** 渐变文字label */
@property(nonatomic, strong)UILabel *label;
/** mask遮罩 */
@property(nonatomic, strong)UIView *mask;

@end

@implementation fadeStringView

- (instancetype)initWithFrame:(CGRect)frame{

    if (self == [super initWithFrame:frame]) {
        
        // 创建渐变文字label
        [self createLabelWithFrame:frame];
        
        // 创建mask遮罩
        [self createMaskWithFrame:frame];
    }
    return self;
}

- (void)createLabelWithFrame:(CGRect)frame{

    // 创建渐变文字label
    self.label = [[UILabel alloc] initWithFrame:frame];
    self.label.font = [UIFont systemFontOfSize:40.f];
    self.label.textAlignment = NSTextAlignmentCenter;
    self.label.text = self.text;
    
    // 添加渐变文字label
    [self addSubview:self.label];
}

- (void)createMaskWithFrame:(CGRect)frame{

    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.frame = frame;
    gradientLayer.colors = @[(__bridge id)[UIColor clearColor].CGColor,
                             (__bridge id)[UIColor whiteColor].CGColor,
                             (__bridge id)[UIColor whiteColor].CGColor,
                             (__bridge id)[UIColor clearColor].CGColor,];
    gradientLayer.locations = @[@(0.01), @(0.1), @(0.9), @(0.99)];
//    gradientLayer.locations = @[@(0.1), @(0.9), @(0.98), @(0.99)];
    gradientLayer.startPoint = CGPointMake(0, 0);
    gradientLayer.endPoint = CGPointMake(1, 1);
    self.mask = [[UIView alloc] initWithFrame:frame];
    [self.mask.layer addSublayer:gradientLayer];
    
    self.maskView = self.mask;
}

@synthesize text = _text;
- (void)setText:(NSString *)text{

    _text = text;
    self.label.text = _text;
}

- (NSString *)text{

    return _text;
}

- (void)fadeRightWithDuration:(NSTimeInterval)duration animated:(BOOL)animated{

    if (animated == YES) {
        [UIView animateWithDuration:3.0f animations:^{
            CGRect frame = self.mask.frame;
            frame.origin.x += frame.size.height;
            frame.origin.y += frame.size.height;
            self.mask.frame = frame;
        }];
    } else {
    
    }
}
@end
