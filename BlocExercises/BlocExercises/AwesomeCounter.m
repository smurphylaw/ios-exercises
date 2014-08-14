//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSInteger startingNumber = MIN(number, otherNumber);
    NSInteger endingNumber = MAX(number, otherNumber);
    NSString *result = @"";
        for (startingNumber ; startingNumber <= endingNumber; startingNumber++) {
        result = [result stringByAppendingString:[NSString stringWithFormat:@"%ld", startingNumber]];
        }
    
    return result;
}

@end
