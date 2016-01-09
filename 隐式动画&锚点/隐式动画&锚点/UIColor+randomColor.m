//
//  UIColor+randomColor.m
//  隐式动画&锚点
//
//  Created by 章芝源 on 16/1/9.
//  Copyright © 2016年 ZZY. All rights reserved.
//

#import "UIColor+randomColor.h"

@implementation UIColor (randomColor)
+ (UIColor *)colorWithRandomColor
{
    CGFloat r = arc4random_uniform(256)/255.0;
    CGFloat g = arc4random_uniform(256)/255.0;
    CGFloat b = arc4random_uniform(256)/255.0;

    return [UIColor colorWithRed:r green:g blue:b alpha:1.0];
}
@end
