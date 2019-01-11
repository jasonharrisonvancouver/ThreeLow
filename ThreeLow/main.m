//
//  main.m
//  ThreeLow
//
//  Created by jason harrison on 2019-01-10.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "HandfulOfDice.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        while(YES){
            // 255 unit long array of characters
            char inputNumber[255];
            
            printf("To play, type roll: ");
            // limit input to max 255 characters
            fgets(inputNumber, 255, stdin);
            
            // print as a c string
            printf("Your string is %s\n", inputNumber);
            
            // convert char array to an NSString object
            NSString *inputNumberString = [NSString stringWithUTF8String:inputNumber];
            
           // NSString *newString = [oldString substringToIndex:[oldString length]-1];

            
            
            inputNumberString = [inputNumberString substringToIndex:[inputNumberString length]-1];
            
            //        // print NSString object
            //        NSLog(@"Number was: %@", inputNumberString);
            //
            //        int userNumber = [inputNumberString intValue];
            //
            
            if([inputNumberString isEqualToString:@"roll"]){
                HandfulOfDice *handfulOfDice = [[HandfulOfDice alloc] init];
                NSArray<Dice *> *arrayOfDice = [handfulOfDice rollDice];
            }
            
        }
        
    }
    return 0;
}
