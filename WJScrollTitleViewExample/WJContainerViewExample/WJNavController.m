//
//  WJNavController.m
//  WJContainerViewExample
//
//  Created by 汪俊 on 16/3/14.
//  Copyright © 2016年 汪俊. All rights reserved.
//

#import "WJNavController.h"
#import "UIImage+reSize.h"

#define WJScreenW [UIScreen mainScreen].bounds.size.width

@interface WJNavController ()

@end

@implementation WJNavController

/**
 * 当第一次使用这个类的时候会调用一次
 */
+ (void)initialize
{
    // 当导航栏用在WJNavigationController中, appearance设置才会生效
    //        UINavigationBar *bar = [UINavigationBar appearanceWhenContainedIn:[self class], nil];
    UINavigationBar *bar = [UINavigationBar appearance];
    UIView *redView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, WJScreenW, 64)];
    redView.backgroundColor = [UIColor colorWithRed:0.9885 green:0.0637 blue:0.1471 alpha:0.895878232758621];
    UIImage *navBgImage = [UIImage captureWithView:redView];
    [bar setBackgroundImage:navBgImage forBarMetrics:UIBarMetricsDefault];
    [bar setTitleTextAttributes:@{
                                  NSFontAttributeName:[UIFont systemFontOfSize:19],NSForegroundColorAttributeName:[UIColor whiteColor]}];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
