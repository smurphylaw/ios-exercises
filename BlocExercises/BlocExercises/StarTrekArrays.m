//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    /* WORK HERE */
    NSArray *starTrekArray = [characterString componentsSeparatedByString:@";"];
    return starTrekArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    NSString *starTrekArray = [characterArray componentsJoinedByString:@";"];
    return starTrekArray;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    NSMutableArray *result = [characterArray mutableCopy];
    NSSortDescriptor *sort = [[NSSortDescriptor alloc] initWithKey: nil ascending: YES selector: @selector(localizedCaseInsensitiveCompare:)];
    
    NSArray *finalResult = [result sortedArrayUsingDescriptors:@[sort]];
    return finalResult;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    /* WORK HERE */
    NSPredicate *containsWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf' "];
    NSArray *result = [characterArray filteredArrayUsingPredicate:containsWorf];
    return result.count != 0;
}

@end
