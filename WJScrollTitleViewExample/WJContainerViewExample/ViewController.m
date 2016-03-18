//
//  ViewController.m
//  WJContainerViewExample
//
//  Created by 汪俊 on 16/2/25.
//  Copyright © 2016年 汪俊. All rights reserved.
//

#import "ViewController.h"
#import "WJContainerView.h"
#import "UIView+WJExtension.h"

#define WJScreenW [UIScreen mainScreen].bounds.size.width
#define WJScreenH [UIScreen mainScreen].bounds.size.height

@interface ViewController () <WJContainerViewDelegate, UIScrollViewDelegate>

@property (weak, nonatomic) WJContainerView *wj_containerView;
/** 测试的scrollerview */
@property (weak, nonatomic) UIScrollView *contentView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 添加顶部的title
    [self setupwj_containerView];
    // 添加scrollerview
    [self setupScrollerView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 *  设置容器的view
 */
- (void)setupwj_containerView{
    WJContainerView *wj_containerView = [WJContainerView containerView];
    self.wj_containerView = wj_containerView;
    wj_containerView.titles = @[@"图片",@"视频",@"声音",@"图片图片",@"视频",@"声音02"];
    [self.view addSubview:wj_containerView];
    [self configwj_containerView];
    [wj_containerView setBackgroundColor:[UIColor whiteColor]];
    // 可以设置按钮背景色颜色
    wj_containerView.buttonBackgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.5];
    // 可以设置指示器颜色
    wj_containerView.indicatorViewColor = [UIColor redColor];
    // 可以开关动画
    wj_containerView.isOpenAnimation = YES;
    // 可以设置动画时间
    wj_containerView.animationTime = 0.25;
    wj_containerView.delegate = self;
    
}

- (void)configwj_containerView{
//    约束
    __weak typeof(self)weakSelf = self;
    [self.wj_containerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@64);
        make.left.right.equalTo(weakSelf.view);
        make.height.equalTo(@35);
    }];
    
}
/**
 *  设置scrollerview
 */
- (void)setupScrollerView{
    // 不要自动调整inset
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    UIScrollView *contentView = [[UIScrollView alloc] init];
    contentView.delegate = self;
    contentView.pagingEnabled = YES;
    [self.view insertSubview:contentView atIndex:0];
    contentView.contentSize = CGSizeMake(WJScreenW * self.wj_containerView.titles.count, 0);
    self.contentView = contentView;
    
    [self configContentView];
    contentView.backgroundColor = [UIColor whiteColor];
    
}


- (void)configContentView{
    [self.contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(@0);
    }];
    self.contentView.showsHorizontalScrollIndicator = NO;
}


#pragma mark - <UIScrollViewDelegate>
- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView
{
    // 当前的索引
//    NSInteger index = scrollView.contentOffset.x / scrollView.width;
    
    
    
}


- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    [self scrollViewDidEndScrollingAnimation:scrollView];
    
    // 点击按钮
    NSInteger index = scrollView.contentOffset.x / scrollView.width;
    [self.wj_containerView configButtonWithIndex:index];
}


/**
 *  代理方法 － 点击title按钮时调用
 *
 *  @param containerView 当前视图
 *  @param index         0 - n 依次对应按钮的下标（非枚举类型）
 */
- (void)containerView:(WJContainerView *)containerView NumberOfRow:(NSInteger)index{
    // ...要做的事
}

/**
 *  代理方法 － 点击title按钮时调用
 *
 *  @param wj_containerView 当前视图
 *  @param index         0 - n 依次对应按钮的下标（非枚举类型）
 */
- (void)wj_containerView:(WJContainerView *)wj_containerView NumberOfRow:(NSInteger)index {
    // ...要做的事
}

@end
