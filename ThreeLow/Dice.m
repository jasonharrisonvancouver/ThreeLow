//
//  Dice.m
//  ThreeLow
//
//  Created by jason harrison on 2019-01-10.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (void)rollNewRandomValue{
    int randomIndex = arc4random_uniform(5) + 1;
    _number = randomIndex;
    
    switch(randomIndex){
        case 1:
            _value = @"⚀";
            break;
        case 2:
            _value = @"⚁";
            break;
        case 3:
            _value = @"⚂ ";
            break;
        case 4:
            _value = @"⚃";
            break;
        case 5:
            _value = @"⚄";
            break;
        case 6:
            _value = @"⚅";
            break;
        default:
            _value = @"????";
            break;
            
    }
    
    
}


@end
