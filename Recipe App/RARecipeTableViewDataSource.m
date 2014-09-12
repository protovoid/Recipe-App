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
    
    // cell.textLabel.text = @"Chad";
    
    cell.textLabel.text = [RARecipes titleAtIndex:indexPath.row];
    
    return cell;
    
    // in cellForRowAtIndexPath return a cell with the textLabel.text set to the string RARecipes class titleAtIndex for indexPath.row
}


@end
