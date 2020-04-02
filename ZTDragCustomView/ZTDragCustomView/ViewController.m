//
//  ViewController.m
//  ZTDragCustomView
//
//  Created by zhangting on 2018/7/23.
//  Copyright © 2018年 zhangting. All rights reserved.
//

#import "ViewController.h"
#import "ZTDragCustomView.h"

@interface ViewController ()

@property (nonatomic, strong) ZTDragCustomView *dragView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.dragView = [[ZTDragCustomView alloc] init];
    self.dragView.frame = CGRectMake(0, kScreemH, kScreemW, kScreemH/2);
    self.dragView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.dragView];
    
#if DEBUG == 1
    NSLog(@"this is debug");
#else
    NSLog(@"this not debug");
#endif


#if TARGET_IPHONE_SIMULATOR
    NSLog(@"这是模拟器");
#else
    NSLog(@"这是真机");
#endif
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)rightClick:(UIButton *)sender {
    [self.view addSubview:self.dragView];
//    [UIView animateWithDuration:0.5 delay:0.1 options:UIViewAnimationOptionCurveEaseInOut animations:^{
//        self.dragView.frame = CGRectMake(0, CGRectGetMinY(self.dragView.frame)<kScreemH?kScreemH:kScreemH-CGRectGetHeight(self.dragView.frame), CGRectGetWidth(self.dragView.frame), CGRectGetHeight(self.dragView.frame));
//    } completion:NULL];
    
    [UIView animateWithDuration:0.5 delay:0.1f usingSpringWithDamping:0.6f initialSpringVelocity:.3f options:UIViewAnimationOptionCurveEaseInOut animations:^{
        self.dragView.frame = CGRectMake(0, CGRectGetMinY(self.dragView.frame)<kScreemH?kScreemH:kScreemH-CGRectGetHeight(self.dragView.frame), CGRectGetWidth(self.dragView.frame), CGRectGetHeight(self.dragView.frame));
    } completion:^(BOOL finished) {

    }];
}

@end
