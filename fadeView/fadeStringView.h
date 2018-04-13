//
//  fadeStringView.h
//  fadeView
//
//  Created by Joyce on 18/4/3.
//  Copyright © 2018年 Joyce. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface fadeStringView : UIView

/** 渐变文字text */
@property(nonatomic, strong)NSString *text;

// 向右渐变
- (void)fadeRightWithDuration:(NSTimeInterval)duration animated:(BOOL)animated;

@end
