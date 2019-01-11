//
//  main.m
//  ThreeLow
//
//  Created by jason harrison on 2019-01-10.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dice *dice1 = [[Dice alloc] init];
        [dice1 rollNewRandomValue];
        NSLog(@"dice 1 number is %i and value is %@", [dice1 number], [dice1 value]);
        
        Dice *dice2 = [[Dice alloc] init];
        [dice2 rollNewRandomValue];
        NSLog(@"dice 2 number is %i and value is %@", [dice2 number], [dice2 value]);
        
        Dice *dice3 = [[Dice alloc] init];
        [dice3 rollNewRandomValue];
        NSLog(@"dice 3 number is %i and value is %@", [dice3 number], [dice3 value]);
        
        Dice *dice4 = [[Dice alloc] init];
        [dice4 rollNewRandomValue];
        NSLog(@"dice 4 number is %i and value is %@", [dice4 number], [dice4 value]);
        
        Dice *dice5 = [[Dice alloc] init];
        [dice5 rollNewRandomValue];
        NSLog(@"dice 5 number is %i and value is %@", [dice5 number], [dice5 value]);
        

    }
    return 0;
}
