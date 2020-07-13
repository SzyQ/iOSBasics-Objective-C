//
//  Person.h
//  Objective-C Basics
//
//  Created by Work on 13/07/2020.
//  Copyright © 2020 Szymon Klimaszewski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StoryTeller.h"
NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject <StoryTeller>

+ (id)create:(NSString*)name age:(NSInteger)age; // Metoda klasy
- (id)initWithName:(NSString*)name andAge:(NSInteger)age; // Metoda instancji

- (void)doRiskyStuff:(NSError**)error;
- (void)executeThrowingException;

@property(strong) NSString *name;
@property(nonatomic) NSInteger age;

@end

NS_ASSUME_NONNULL_END
