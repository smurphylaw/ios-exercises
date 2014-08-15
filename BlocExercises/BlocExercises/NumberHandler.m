//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    /* WORK HERE */
    number = @([number intValue] * 2);
    
    return number;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    
    NSInteger lowBound = (number <= otherNumber) ? number : otherNumber;
    NSInteger upBound = (number <= otherNumber) ? otherNumber : number;
    
    NSMutableArray *result = [NSMutableArray array];
    for (lowBound; lowBound <= upBound; lowBound++) {
        [result addObject:[NSNumber numberWithInt:lowBound]];
    }
    
    return result;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* WORK HERE */
    NSSortDescriptor *lowest = [NSSortDescriptor sortDescriptorWithKey:nil ascending:YES];
    
    NSArray *sortResult = [arrayOfNumbers sortedArrayUsingDescriptors:@[lowest]];
    NSLog(@"%@", sortResult);
    
    NSNumber *finalResult = [NSNumber numberWithInteger:[[sortResult firstObject] integerValue]];
    return [finalResult integerValue];
}

@end
