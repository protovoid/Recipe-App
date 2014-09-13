//
//  RARecipes.h
//  Recipe App
//
//  Created by Chad on 9/11/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RARecipes : NSObject


+ (NSInteger)count;
+ (NSDictionary *)recipeAtIndex:(NSInteger)index;
+ (NSString *)titleAtIndex:(NSInteger)index;
+ (NSString *)descriptionAtIndex:(NSInteger)index;
+ (NSInteger)ingredientCountAtIndex:(NSInteger)index;
+ (NSString *)ingredientTypeAtIndex:(NSInteger)ingIndex inRecipeAtIndex:(NSInteger)recIndex;
+ (NSString *)ingredientVolumeAtIndex:(NSInteger)ingIndex inRecipeAtIndex:(NSInteger)recIndex;
+ (NSArray *)directionsAtIndex:(NSInteger)index;

@end
