//
//  RecipeViewController.m
//  Recipe App
//
//  Created by Chad on 9/11/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "RecipeViewController.h"
#import "RARecipeTableViewDataSource.h"

@interface RecipeViewController ()

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) RARecipeTableViewDataSource *dataSource;

@end

@implementation RecipeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"Recipe Thingie";
    
    self.dataSource = [RARecipeTableViewDataSource new];
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame]; // tableview fills frame
    self.tableView.dataSource = self.dataSource; // tells tableview who data source is (self in this case)
    [self.view addSubview:self.tableView];
    
    // tell tableview what type of cell we are registering
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    
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
