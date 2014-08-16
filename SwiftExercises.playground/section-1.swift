import UIKit



var name: String = "Anthony"    // Good, no optional
var couldBeAName: String? = "Anthony"

if couldBeAName != nil {
    var name: String = couldBeAName!
    // Can now use name
}

// Above is lengthy code, there is a shorthand
if let name = couldBeAName {
    // Only executes if couldBeAName is not nil and assigns name
    // without explicitly unwrapping the optional using !
}

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    // WORK HERE
    let newCheese = "My favorite cheese is \(cheese)"
    return newCheese
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."
println("\(fullSentence)")

/*

Arrays & Dictionaries

*/

let numberArray = [1, 2, 3, 4]
// Add 5 to this array
// WORK HERE
numberArray + [5]

var numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
// WORK HERE
numberDictionary[5] = "five"
numberDictionary

/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively
// WORK HERE
for i in 1...10 {
    i
}

// Use a half-closed range loop to print 1 - 10, inclusively
// WORK HERE
for i in 1..<11 {
    i
}

let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:Array<Dictionary<String, String>>) -> Array<String> {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    // WORK HERE
    var favoriteDrink: [String] = []
    for elem in characters {
        if let value = elem["favorite drink"] {
            favoriteDrink.append(value)
        }
    }

    return favoriteDrink
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks


/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

// WORK HERE - make your function and pass `strings` in
/* func stringReturn(givenStrings: Array<String>) -> String {
    var returnedString : String
    
    for i in givenStrings {
        returnedString += i + ";"
    }
    return returnedString
}

let expectedOutput = "milk;eggs;bread;challah"
let actualOutput = stringReturn(strings)

*/

/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

// Use a closure to sort this array alphabetically
// WORK HERE

var cerealSortedArray = sorted(cerealArray, { cereal1, cereal2 in
    cereal1 < cereal2
} )
