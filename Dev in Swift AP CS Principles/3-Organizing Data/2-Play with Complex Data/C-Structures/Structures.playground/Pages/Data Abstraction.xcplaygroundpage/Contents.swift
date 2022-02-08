/*:
## Data Abstraction
 
 Like any form of data abstraction, structs simplify the code that works with related data. In the case of the `Song` struct, you no longer have to worry about three parallel arrays. Using data abstraction can result in a program that is easier to develop and maintain.
  
 To see the benefit of data abstraction firsthand, complete the exercises below.

 - callout(Exercise): 
 Complete the missing code to process the parallel arrays from the first page of the playground.
 */
let songTitles = ["Ooh yeah", "Maybe", "No, no, no", "Makin' up your mind"]
let artists = ["Brenda and the Del-chords", "Brenda and the Del-chords", "Fizz", "Boom!"]
let durations = [90, 200, 150, 440]

func songInformation(/* supply parameters here*/) -> String {
    /* Return a string describing the song,
     e.g. "\"Maybe\" by Brenda and the Del-chords, duration 200 seconds"
     */
}

for i in 0 ... songTitles.count - 1 {
    print(songInformation(title: songTitles[i], artist: artists[i], duration: durations[i]))
}
/*:
 The code above is prone to all sorts of errors. What would happen if your song catalog expanded but you forgot to update one of the three arrays? What if you added star rating data with a new array but forgot to modify the `songInformation` function?
 
 This kind of code is also hard to maintain and read. What if you were tracking thirty properties about songs, instead of just a handful? What would the parameter list of the `songInformation` function look like?
 
 Next you'll perform the same task using a data abstraction: the `Song` struct from the previous page.
 */
struct Song {
    let title: String
    let artist: String
    let duration: Int
}
//:- callout(Exercise): Below, use the `Song` struct from the previous page to simplify your code.
/* Create the array of songs here */

/* Declare the songInformation function here */

/* Write a for...in loop here */

/*:
 With the `Song` struct, you could add a star rating simply by adding a new property: `let starRating: Int`. Your initializers will automatically warn you that you're not passing enough arguments. Your `informationFor` function will be easy to modify. And you won't have to update your loop at all!
 
 Learn how to make types with mutable properties next.

[Previous](@previous)  |  page 4 of 10  |  [Next: Mutability](@next)
 */