//
//  WJScrollTitleViewController.m
//  WJContainerViewExample
//
//  Created by 汪俊 on 16/3/14.
//  Copyright © 2016年 汪俊. All rights reserved.
//


#import "WJScrollTitleViewController.h"
#import "WJScrollTitleView.h"
#import "WJSourceTableViewController.h"

// 用到项目中需要导入以下头文件
#import "WJTitles.h"
#import "Masonry.h"


#define WJScreenW [UIScreen mainScreen].bounds.size.width
#define WJScreenH [UIScreen mainScreen].bounds.size.height

@interface WJScrollTitleViewController ()

@property (weak, nonatomic) WJScrollTitleView *tv;

@end

@implementation WJScrollTitleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    WJScrollTitleView *tv = [WJScrollTitleView scrollTitleView];
    self.tv = tv;
    tv.titlesBackgroundColor = [UIColor colorWithWhite:1.0 alpha:0.9];
    // 此段垃圾代码仅为测试
    WJSourceTableViewController *vc1 = [[WJSourceTableViewController alloc]init];
    vc1.view.backgroundColor = [UIColor whiteColor];
    [self addChildViewController:vc1];
    WJSourceTableViewController *vc2 = [[WJSourceTableViewController alloc]init];
    vc2.view.backgroundColor = [UIColor blackColor];
    [self addChildViewController:vc2];
    WJSourceTableViewController *vc3 = [[WJSourceTableViewController alloc]init];
    vc3.view.backgroundColor = [UIColor yellowColor];
    [self addChildViewController:vc3];
    WJSourceTableViewController *vc4 = [[WJSourceTableViewController alloc]init];
    vc4.view.backgroundColor = [UIColor greenColor];
    [self addChildViewController:vc4];
    WJSourceTableViewController *vc5 = [[WJSourceTableViewController alloc]init];
    vc5.view.backgroundColor = [UIColor redColor];
    [self addChildViewController:vc5];
    UIViewController *vc6 = [[UIViewController alloc]init];
    vc6.view.backgroundColor = [UIColor grayColor];
    [self addChildViewController:vc6];
    UIViewController *vc7 = [[UIViewController alloc]init];
    vc7.view.backgroundColor = [UIColor blueColor];
    [self addChildViewController:vc7];
    UIViewController *vc8 = [[UIViewController alloc]init];
    vc8.view.backgroundColor = [UIColor redColor];
    [self addChildViewController:vc8];
    UIViewController *vc9 = [[UIViewController alloc]init];
    vc9.view.backgroundColor = [UIColor grayColor];
    [self addChildViewController:vc9];
    UIViewController *vc10 = [[UIViewController alloc]init];
    vc10.view.backgroundColor = [UIColor blueColor];
    [self addChildViewController:vc10];
    UIViewController *vc11 = [[UIViewController alloc]init];
    vc11.view.backgroundColor = [UIColor redColor];
    [self addChildViewController:vc11];
    UIViewController *vc12 = [[UIViewController alloc]init];
    vc12.view.backgroundColor = [UIColor grayColor];
    [self addChildViewController:vc12];
    UIViewController *vc13 = [[UIViewController alloc]init];
    vc13.view.backgroundColor = [UIColor blueColor];
    [self addChildViewController:vc13];
    
    
    tv.viewControllers = @[vc1,vc2,vc3,vc4,vc5,vc6,vc7,vc8,vc9,vc10,vc11,vc12,vc13];
    tv.titles = @[@"demo1",@"demo2",@"", @"demo3",@"demo4",@"demo5",@"demo6",@"demo7",@"demo8",@"demo9",@"demo10",@"demo11",@"demo12",@"demo13"];
    
    [self.view addSubview:tv];
    
    [self configView];
    
    //设置标题的最大偏移
    tv.titlesScrollWidth = WJScreenW * 2.4;
    [tv setContentBackgroundColor:[UIColor grayColor]];
}

// 约束WJScrollTitleView控制器视图的位置
- (void)configView {
    [self.tv mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.leading.equalTo(@0);
        make.bottom.right.equalTo(@0);
    }];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
