//
//  Developer.m
//  05NSArray
//
//  Created by Denis on 25.08.2018.
//  Copyright © 2018 Denis. All rights reserved.
//

#import "Developer.h"

@implementation Developer

-(void)movement{
    
    [super movement];
    NSLog(@"\n Development");
}
-(NSString *)description{
    return [NSString stringWithFormat:@"team = %@, experience = %f", _team, _experience];
}
@end
