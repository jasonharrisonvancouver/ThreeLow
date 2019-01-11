//
//  GameController.m
//  ThreeLow
//
//  Created by jason harrison on 2019-01-10.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import "GameController.h"

@implementation GameController


- (void)holdDie:(int)index{
    index--; // dice are #1-5 but index is #0-4
    
    if(_heldDice[index] != nil){
        _heldDice[index] = _allDice[index];
        NSLog(@"holding: [%@]", [_allDice[index] value]);
    }else{
        NSLog(@"unholding: [%@]", [_allDice[index] value]);
        //_heldDice[index] = ;//_allDice[index];
        [_heldDice removeObjectAtIndex:index];
    }
    
    
    
}
@end
