//
//  ZTDragCustomView.m
//  ZTDragCustomView
//
//  Created by zhangting on 2018/7/23.
//  Copyright © 2018年 zhangting. All rights reserved.
//

#import "ZTDragCustomView.h"

@implementation ZTDragCustomView

- (instancetype)initWithFrame:(CGRect)frame
{
    
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

-(void)show{
    
}

#pragma mark - Gesture Event
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"touchesBegan");
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"touchesEnded");
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"touchesMoved");
}

-(void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"touchesCancelled");
}

@end
