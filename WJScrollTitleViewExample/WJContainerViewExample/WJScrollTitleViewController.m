//
//  WJScrollTitleViewController.m
//  WJContainerViewExample
//
//  Created by 汪俊 on 16/3/14.
//  Copyright © 2016年 汪俊. All rights reserved.
//

#import "WJScrollTitleViewController.h"
#import "WJScrollTitleView.h"
#import "Masonry.h"
#define WJScreenW [UIScreen mainScreen].bounds.size.width

@interface WJScrollTitleViewController ()

@property (weak, nonatomic) WJScrollTitleView *tv;

@end

@implementation WJScrollTitleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    WJScrollTitleView *tv = [WJScrollTitleView scrollTitleView];
    self.tv = tv;
    tv.backgroundColor = [UIColor greenColor];
    
    UIViewController *vc1 = [[UIViewController alloc]init];
    vc1.view.backgroundColor = [UIColor whiteColor];
    [self addChildViewController:vc1];
    UIViewController *vc2 = [[UIViewController alloc]init];
    vc2.view.backgroundColor = [UIColor blackColor];
    [self addChildViewController:vc2];
    UIViewController *vc3 = [[UIViewController alloc]init];
    vc3.view.backgroundColor = [UIColor yellowColor];
     [self addChildViewController:vc3];
    UIViewController *vc4 = [[UIViewController alloc]init];
    vc4.view.backgroundColor = [UIColor greenColor];
     [self addChildViewController:vc4];
    UIViewController *vc5 = [[UIViewController alloc]init];
    vc5.view.backgroundColor = [UIColor redColor];
     [self addChildViewController:vc5];
    UIViewController *vc6 = [[UIViewController alloc]init];
    vc6.view.backgroundColor = [UIColor grayColor];
     [self addChildViewController:vc6];
    UIViewController *vc7 = [[UIViewController alloc]init];
    vc7.view.backgroundColor = [UIColor blueColor];
     [self addChildViewController:vc7];
    
    tv.views = @[vc1.view,vc2.view,vc3.view,vc4.view,vc5.view,vc6.view,vc7.view];
    tv.titles = @[@"haha1",@"haha2",@"haha3",@"haha4",@"haha5",@"haha6",@"haha7"];
    
    
    [self.view addSubview:tv];
    
    [self configView];
    
    //设置标题的最大偏移
    tv.titlesScrollWidth = WJScreenW * 1.4;
    [tv setContentBackgroundColor:[UIColor yellowColor]];
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
