//
//  Animal.h
//  05NSArray
//
//  Created by Denis on 28.08.2018.
//  Copyright © 2018 Denis. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Animal : NSObject



@property (strong, nonatomic) NSString* petName;
@property (strong, nonatomic) NSString* type;
@property (assign, nonatomic) int ageAnimal;
@property (assign, nonatomic) float weightAnimal;

-(void) movement;

@end
