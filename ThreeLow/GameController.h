//
//  GameController.h
//  ThreeLow
//
//  Created by jason harrison on 2019-01-10.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

NS_ASSUME_NONNULL_BEGIN

@interface GameController : NSObject

@property NSMutableArray<Dice *> *allDice;
@property NSMutableArray<Dice *> *heldDice;

- (void)holdDie:(int)index;

@end

NS_ASSUME_NONNULL_END
