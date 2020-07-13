//
//  main.m
//  Objective-C Basics
//
//  Created by Work on 13/07/2020.
//  Copyright © 2020 Szymon Klimaszewski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person * person = [Person create:@"John Doe" age:44];
        NSLog(@"Person: %@, age %ld", person.name, (long)person.age);
        [person tellMeAStory];
        SEL storySelector = @selector(tellMeAnotherStory);
        if([person respondsToSelector:storySelector]) {
            [person tellMeAnotherStory];
        }
        if([person respondsToSelector:@selector(considerTellingMeAnotherStory)]){
            [person considerTellingMeAnotherStory];
        }
    }
    return 0;
}
