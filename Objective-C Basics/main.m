//
//  main.m
//  Objective-C Basics
//
//  Created by Work on 13/07/2020.
//  Copyright © 2020 Szymon Klimaszewski. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"char: %lu, short int: %lu, int: %lu, long int: %lu, float: %lu, double: %lu.",
        sizeof(short int),sizeof(int),sizeof(char),sizeof(long int),sizeof(float),sizeof(double));
        
        char arrayOfCharacter[] = "Ciąg znaków";
        NSLog(@"%s",arrayOfCharacter);
        
        NSLog(@"Skoro if(5) -> TRUE, to if(5 == TRUE) -> %d",5 == TRUE);
        
        NSLog(@"Dzielenie 1/5=%d, zaś (float)1/5=%.2f",1/5, (float)1/5);
        
        typedef struct Point { int x; int y;} Point;
        Point test = {2,4};
        NSLog(@"Punkt(%d,%d)",test.x, test.y);
    }
    return 0;
}
