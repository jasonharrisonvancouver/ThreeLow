//
//  HandfulOfDice.h
//  ThreeLow
//
//  Created by jason harrison on 2019-01-10.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

NS_ASSUME_NONNULL_BEGIN

@interface HandfulOfDice : NSObject
- (NSArray<Dice *> *)rollDice;

@end

NS_ASSUME_NONNULL_END
