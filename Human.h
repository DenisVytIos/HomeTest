//
//  Human.h
//  05NSArray
//
//  Created by Denis on 25.08.2018.
//  Copyright © 2018 Denis. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Human : NSObject

@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSString* type;
@property (assign, nonatomic) int age;
@property (assign, nonatomic) float height;
@property (assign, nonatomic) float weight;

-(void) movement;

@end
