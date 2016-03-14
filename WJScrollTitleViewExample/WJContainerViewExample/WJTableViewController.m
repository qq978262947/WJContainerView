//
//  WJTableViewController.m
//  WJContainerViewExample
//
//  Created by 汪俊 on 16/3/14.
//  Copyright © 2016年 汪俊. All rights reserved.
//

#import "WJTableViewController.h"
#import "ViewController.h"
#import "WJScrollTitleViewController.h"

@interface WJTableViewController ()

@end

@implementation WJTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellId = @"cellId";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (nil == cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellId];
    }
    if (indexPath.row == 0) {
        cell.textLabel.text = @"WJContainerView";
    } else {
        cell.textLabel.text = @"WJScrollTitleView";
    }
    
    
    return cell;
}


#pragma mark - Table view delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0){
        [self.navigationController pushViewController:[[ViewController alloc]init] animated:YES];
    } else {
        [self.navigationController pushViewController:[[WJScrollTitleViewController alloc]init] animated:YES];
    }
}

@end
