//
//  ViewController.m
//  JsPatchDemo
//
//  Created by 邵源 on 16/5/31.
//  Copyright © 2016年 邵源. All rights reserved.
//

#import "LHViewController.h"

@interface LHViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation LHViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataArray = [NSMutableArray arrayWithObjects:@"one",@"two",@"three",@"four",@"five", nil];
    UITableView *tab = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 375, 667)];
    self.tableView = tab;
    
    [self.view addSubview:_tableView];
    
    self.tableView.delegate=self;
    self.tableView.dataSource=self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //    return 5;
    //超出dataArray的数组范围
    return 6;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString* cellIdentifier=@"cell";
    UITableViewCell* cell=[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell==nil) {
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    cell.textLabel.text=[self.dataArray objectAtIndex:indexPath.row];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
