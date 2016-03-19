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
#define WJScreenH [UIScreen mainScreen].bounds.size.height

@interface WJScrollTitleViewController () <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) WJScrollTitleView *tv;

@end

@implementation WJScrollTitleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    WJScrollTitleView *tv = [WJScrollTitleView scrollTitleView];
    self.tv = tv;
    tv.backgroundColor = [UIColor greenColor];
    
    UITableViewController *vc1 = [[UITableViewController alloc]init];
    vc1.view.backgroundColor = [UIColor whiteColor];
    vc1.tableView.delegate = self;
    vc1.tableView.dataSource = self;
    [self addChildViewController:vc1];
    UITableViewController *vc2 = [[UITableViewController alloc]init];
    vc2.view.backgroundColor = [UIColor blackColor];
    vc2.tableView.delegate = self;
    vc2.tableView.dataSource = self;
    [self addChildViewController:vc2];
    UITableViewController *vc3 = [[UITableViewController alloc]init];
    vc3.view.backgroundColor = [UIColor yellowColor];
    vc3.tableView.delegate = self;
    vc3.tableView.dataSource = self;
     [self addChildViewController:vc3];
    UITableViewController *vc4 = [[UITableViewController alloc]init];
    vc4.view.backgroundColor = [UIColor greenColor];
    vc4.tableView.delegate = self;
    vc4.tableView.dataSource = self;
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
    
    tv.viewControllers = @[vc1,vc2,vc3,vc4,vc5,vc6,vc7];
    tv.titles = @[@"demo1",@"demo2",@"demo3",@"demo4",@"demo5",@"demo6",@"demo7"];
    
    
    [self.view addSubview:tv];
    
    self.view.frame = CGRectMake(0, 0, WJScreenW, WJScreenH);
    
    [self configView];
    
    //设置标题的最大偏移
    tv.titlesScrollWidth = WJScreenW * 1.4;
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

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellId = @"cellID";
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellId];
    cell.textLabel.text = @"111111";
    return cell;
}

@end
