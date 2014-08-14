//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    NSString *result = [NSString stringWithFormat:@"%@", [characterDictionary objectForKey:@"favorite drink"]];
    return result;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    /* WORK HERE */
    NSArray *result = [charactersArray valueForKey:@"favorite drink"];
    return result;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    /* WORK HERE */
    NSMutableDictionary *quote = [characterDictionary mutableCopy];
    
    [quote setObject:@"test" forKey:@"quote"];
    return quote;
}

@end
