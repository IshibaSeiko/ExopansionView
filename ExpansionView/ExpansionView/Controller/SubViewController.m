//
//  ViewController.m
//  ExpansionView
//
//  Created by 石場清子 on 2019/06/29.
//  Copyright © 2019 石場清子. All rights reserved.
//

#import "SubViewController.h"
#import "DataSource.h"

@interface SubViewController ()

@property (weak, nonatomic) IBOutlet UIView *subView;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic) DataSource *datasource;

@end

@implementation SubViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.tableView.delegate = self;
    
    self.datasource = [[DataSource alloc] init];
    self.tableView.dataSource = self.datasource;
    
    [self.tableView reloadData];
}

- (IBAction)button:(UIButton *)sender {
    
    CGRect subViewOriginRect = self.subView.frame;
    CGRect subViewNewRect = CGRectMake(subViewOriginRect.origin.x, subViewOriginRect.origin.y, subViewOriginRect.size.width / 2, subViewOriginRect.size.height);
    
    self.subView.frame = subViewNewRect;
    
    CGRect tableViewOriginRect = self.tableView.frame;
    CGRect tableViewNewRect = CGRectMake(tableViewOriginRect.origin.x, tableViewOriginRect.origin.y, tableViewOriginRect.size.width / 2, tableViewOriginRect.size.height);
    
    self.tableView.frame = tableViewNewRect;
}

@end
