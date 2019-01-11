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
#import "GameController.h"



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

            
            GameController *gameController = [[GameController alloc] init];

            
            inputNumberString = [inputNumberString substringToIndex:[inputNumberString length]-1];
            
            //        // print NSString object
            //        NSLog(@"Number was: %@", inputNumberString);
            //
            int userNumber = [inputNumberString intValue];
            
            if(userNumber >= 1 && userNumber <= 5){
                [gameController holdDie:userNumber];
            }
            //
            
            
            if([inputNumberString isEqualToString:@"roll"]){
                HandfulOfDice *handfulOfDice = [[HandfulOfDice alloc] init];
                NSMutableArray<Dice *> *arrayOfDice = [handfulOfDice rollDice];
                
                gameController.allDice = arrayOfDice;
                
            }
            
            
            
            
            
            // 255 unit long array of characters
            char inputNumbers[255];
            
            printf("To play, type roll (or type 1-5 to hold that die: ");
            // limit input to max 255 characters
            fgets(inputNumbers, 255, stdin);
            
            // print as a c string
            printf("Your string is %s\n", inputNumbers);
            
            // convert char array to an NSString object
            NSString *inputNumberStrings = [NSString stringWithUTF8String:inputNumbers];
            
            // NSString *newString = [oldString substringToIndex:[oldString length]-1];
            
            
            
            
            inputNumberString = [inputNumberString substringToIndex:[inputNumberString length]-1];
            
            //        // print NSString object
            //        NSLog(@"Number was: %@", inputNumberString);
            //
            int userNumbers = [inputNumberStrings intValue];
            
            if(userNumbers >= 1 && userNumbers <= 5){
                [gameController holdDie:userNumbers];
            }
            
            
            
            
            
            
            
            
            // 255 unit long array of characters
            char input[255];
            
            printf("To unhold those dice type unhold: ");
            // limit input to max 255 characters
            fgets(input, 255, stdin);
            
            // print as a c string
            printf("Your string is %s\n", input);
            
            // convert char array to an NSString object
            NSString *inString = [NSString stringWithUTF8String:input];
            
            if([inString isEqualToString:@"unhold"]){
                [gameController holdDie:userNumbers];
            }
            
            
        }
        
    }
    return 0;
}
