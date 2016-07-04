//
//  ViewController.m
//  LHJSPatchDemo
//
//  Created by cheyipai on 16/7/4.
//  Copyright © 2016年 cheyipai. All rights reserved.
//

#import "ViewController.h"
#import "LHViewController.h"


@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, weak) UITableView *tableView;
@property (nonatomic, strong) NSArray *dataArray;

@end

@implementation ViewController

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
    //        return 5;
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

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [self.navigationController pushViewController:[LHViewController new] animated:YES];
}

@end
