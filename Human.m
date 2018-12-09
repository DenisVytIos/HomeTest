//
//  Human.m
//  05NSArray
//
//  Created by Denis on 25.08.2018.
//  Copyright © 2018 Denis. All rights reserved.
//

#import "Human.h"

@implementation Human

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"No name";
        self.age = 1;
        self.height = 1.f;
        self.weight = 1.f;
        self.type = @"Human";
    }
    return self;
}

-(void) movement{
    
    NSLog(@"\n movement");
    
}
-(NSString *)description{
    return [NSString stringWithFormat:@"name = %@, age = %d, height = %f, weight = %f", _name, _age, _height, _weight];
}
@end
