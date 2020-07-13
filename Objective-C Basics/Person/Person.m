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

- (void)tellMeAStory {
    NSLog(@"That's story began long time ago, where C was a child.");
}

- (void)tellMeAnotherStory {
    NSLog(@"Then C had a child and named him Objective-C.");
}

- (void)doRiskyStuff:(NSError *__autoreleasing *)error {
    if(error == NULL) {
        return;
    }
    *error = [NSError errorWithDomain:@"My.Unique.Domain" code:1 userInfo:nil];
}

- (void)executeThrowingException {
    @throw [NSException
            exceptionWithName:@"Invalid action!"
            reason:@"Too many unicorns"
            userInfo:[NSDictionary dictionaryWithObjectsAndKeys:
                      @"Detail", @"Rainbow had too many colors!",
                      nil]];
}

@end
