//
//  ViewController.m
//  隐式动画&锚点
//
//  Created by 章芝源 on 16/1/9.
//  Copyright © 2016年 ZZY. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+randomColor.h"
@interface ViewController ()
@property(nonatomic, strong)CALayer *layerC;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    CALayer *layer = [CALayer layer];
    layer.backgroundColor = [UIColor redColor].CGColor;
//    layer.position = CGPointMake(100, 0);
    layer.anchorPoint = CGPointMake(0, 0);//锚点的x, y的值,  范围是0~1;
    layer.bounds = CGRectMake(0, 0, 200, 200);
    self.layerC = layer;
    [self.view.layer addSublayer:layer];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    // 默认每个动画都会包装到一个事务
    // 执行隐式动画之前去设置这个动画时长
    [CATransaction setAnimationDuration:1.0];
    //非根层
    self.layerC.position = CGPointMake(arc4random_uniform(self.view.frame.size.width), arc4random_uniform(self.view.frame.size.height));
    self.layerC.cornerRadius = arc4random_uniform(100) + 1;
    self.layerC.borderWidth = arc4random_uniform(10);
    self.layerC.borderColor = [UIColor colorWithRandomColor].CGColor;
    self.layerC.backgroundColor = [UIColor colorWithRandomColor].CGColor;
//    CGFloat w = arc4random_uniform(10)+70;
//    CGFloat h = arc4random_uniform(10)+70;
//    self.layerC.bounds.size = CGSizeMake(w, h);
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
