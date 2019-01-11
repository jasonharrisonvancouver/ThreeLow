//
//  Dice.h
//  ThreeLow
//
//  Created by jason harrison on 2019-01-10.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Dice : NSObject

@property NSString *value;
@property int number;

- (void)rollNewRandomValue;

@end

NS_ASSUME_NONNULL_END
