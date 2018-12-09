//
//  Animal.m
//  05NSArray
//
//  Created by Denis on 28.08.2018.
//  Copyright © 2018 Denis. All rights reserved.
//

#import "Animal.h"

@implementation Animal

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.petName = @"No name";
        self.type = @"Animal";
        self.ageAnimal = 1;
        self.weightAnimal = 0.0001f;
        
    }
    return self;
}

-(void) movement{
    
    NSLog(@"\n Animal movement!");
    
}

-(NSString *)description{
    
    return [NSString stringWithFormat: @"name = %@, age = %d,weight = %f", _petName, _ageAnimal, _weightAnimal];
    
}

@end
