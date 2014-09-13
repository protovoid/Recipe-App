//
//  RecipeDetailViewController.m
//  Recipe App
//
//  Created by Chad on 9/13/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "RecipeDetailViewController.h"
#import "RARecipes.h"

@interface RecipeDetailViewController ()

@property (strong, nonatomic) UIScrollView *scrollView;

@end

@implementation RecipeDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    self.title = [RARecipes titleAtIndex:self.recipeIndex];
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.frame]; // new scrollview that fills frame
    [self.view addSubview:self.scrollView];
    
    [self addLabels];

    
    // the detail view should be a UIScrollView with UILabels
    // that show the description at the top, a list of ingredients, and the steps necessary.
    
}



- (void)addLabels {
    CGFloat topMargin = 20;
    CGFloat labelHeight = 20;
    // CGFloat topLabel = 20;
    
    UILabel *descriptionLabel = [[UILabel alloc] initWithFrame:CGRectMake(topMargin, topMargin, self.view.frame.size.width, 100)];
    descriptionLabel.text = [RARecipes descriptionAtIndex:self.recipeIndex];
    descriptionLabel.textColor = [UIColor blackColor];
    descriptionLabel.backgroundColor = [UIColor orangeColor];
    
    /*
    for (int i = 0; i < [RARecipes descriptionAtIndex:self.recipeIndex]; i++) {
        descriptionLabel.text = [RARecipes descriptionAtIndex:self.recipeIndex];
    }
    */
    topMargin += 20;
    
    UILabel *ingredientsLabel = [[UILabel alloc] initWithFrame:CGRectMake(topMargin, topMargin + labelHeight, self.view.frame.size.width, 100)];
    ingredientsLabel.text = [RARecipes descriptionAtIndex:self.recipeIndex];
    ingredientsLabel.textColor = [UIColor blackColor];
    ingredientsLabel.backgroundColor = [UIColor grayColor];
    
    /*
    for (int i = 0; i < [RARecipes ingredientCountAtIndex:self.recipeIndex]; i++) {
        
    }
    */
    topMargin += 20;
    
    /*
    UILabel *directionsLabel = [[UILabel alloc] initWithFrame:CGRectMake(topMargin, topMargin, self.view.frame.size.width, 100)];
    directionsLabel.text = [RARecipes directionsAtIndex:self.recipeIndex];
    directionsLabel.textColor = [UIColor blackColor];
    directionsLabel.backgroundColor = [UIColor blueColor];
    
    
    for (int i = 0; i < [RARecipes directionsAtIndex:self.recipeIndex]; i++) {
        
    }
    */
    topMargin += 20;
    
    
    [self.scrollView addSubview:descriptionLabel];
    [self.scrollView addSubview:ingredientsLabel];
    // [self.scrollView addSubview:directionsLabel];
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
