//
//  RARecipeTableViewDataSource.m
//  Recipe App
//
//  Created by Chad on 9/11/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "RARecipeTableViewDataSource.h"
#import "RARecipes.h"

@implementation RARecipeTableViewDataSource


// required UITableViewDataSource methods go here

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // return RARecipes.(NSInteger)count;
    return [RARecipes count];
    // In numberOfRows return RARecipes class method count

}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if (!cell) {
        cell = [UITableViewCell new];
    }
    
    cell.textLabel.text = [RARecipes titleAtIndex:indexPath.row];
    // cell.textLabel.text = [self titles][indexPath.row];
    return cell;
    
    // in cellForRowAtIndexPath return a cell with the textLabel.text set to the string RARecipes class titleAtIndex for indexPath.row
}


- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    tableView.backgroundColor = [UIColor yellowColor];
    
    return @"Recipe.com";
}

/*
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    UILabel *myLabel = [[UILabel alloc] init];
    myLabel.frame = CGRectMake(20, 8, 320, 20);
    myLabel.font = [UIFont boldSystemFontOfSize:18];
    myLabel.text = [self tableView:tableView titleForHeaderInSection:section];
    
    UIView *headerView = [[UIView alloc] init];
    [headerView addSubview:myLabel];
    
    return headerView;
}
 */


- (NSString *)titleAtIndexPath:(NSIndexPath *)path {
    if (path.row < RARecipes.count) {
        return [RARecipes titleAtIndex:path.row];
    } else {
        return nil;
    }
}



@end
