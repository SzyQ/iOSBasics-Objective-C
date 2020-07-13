//
//  Person.m
//  Objective-C Basics
//
//  Created by Work on 13/07/2020.
//  Copyright © 2020 Szymon Klimaszewski. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize name, age;

- (id)init {
    return [self initWithName:@"Unknown" andAge:0];
}

+ (id)create:(NSString*)name age:(NSInteger)age {
    return [[Person alloc] initWithName:name andAge:age];
}

- (id)initWithName:(NSString*)name andAge:(NSInteger)age {
    if(self = [super init]){
        self.name = name;
        self.age = age;
    }
    return self;
}

@end
