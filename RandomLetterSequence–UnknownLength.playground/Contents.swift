import Cocoa

/*:

Your prior goal was to:

* generate a string, 20 characters long, with letters randomly selected
    * based on probability of each letter occuring in all (or at least most) English writing

However, this is not quite how a Markov Chain works.

A Markov chain makes selections based on an analysis of *only* the input text provided.

So, let's move to the next step.

Consider the text below. Re-execute the playground a few times.

*/

let input = getRandomSequence()

input

/*:

What do you notice about the input text each time you run the playground?

Your next step is to take what you have learned from prior playgrounds, and, write an algorithm in plain English that you think would accomplish this goal:

* determine the probability with which a given letter occurs in the input text
* build an output string that is 30 characters long
    * letters occur in the output string based on the proabability with which they occurred in the input string

*/

/*

Write your algorithm ideas here:

Summary
-------
i will use the perctenages that the letters apper in the input to creat a markov chain that creats another string with the same ratios 

Ideas
-----
-first figure out how to filter the letter and find out there percenatege (create array) 
-


Algorithm (point-form, in English)
----------------------------------

Assumptions
-----------

*/


//create empty list of possiblityies


var letterCounts = [Character: Int]()

//loup over the first string 

for letter in input.characters{
    letter
    

    
    //build the dictionary (list) of letter counts
    if letterCounts[letter] == nil {    // NO ENTRY AT ALL yet for this character
        letterCounts[letter] = 1
    } else {
        // we know this letter is in the dictionary 
        //... just add 1 to the current count 
        letterCounts[letter]! = letterCounts[letter]! + 1
    }
}

letterCounts

input.characters.count

//create a empty dictonatry to store the probilities
var letterProbabilities = [Character: Float]()

//loop over the list of letter counts

for(letter, counts)in letterCounts {
    letter
    counts
    //add and entry to the probibilites 
    letterProbabilities[letter] = Float (counts) / Float (input.characters.count) * 100
}

var percentage: Float = 0.0
// check to make sure it adds to 100%
for (letter, probabilites) in letterProbabilities{
    probabilites
    percentage += probabilites
    percentage
}


var outputString = ""

for i in 1...30 {
    
    //gernerate a random value
    let newrandomvalue = arc4random_uniform(1000)
    let newrandomvalueFloat = Float(newrandomvalue)/10
    //as with carlos algortihm we are gong to determine  upper value and a lower value 
    var upperValue: Float = 0.0
    for (letter, properties) in letterProbabilities {
     //determine the new upper value 
        upperValue += properties
        
        if(newrandomvalueFloat < upperValue){
            outputString += String(letter)
            //stop scaning 
            break
            
            
        }
        
        
    }
}

//show the string

outputString



outputString.characters.count










