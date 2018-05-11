//
//  main.swift
//  English or French?
//

import Foundation

// INPUT
// Collect and filter user input here

var expectedLines = -1

//Loop forever until valid input is given.
while 1 == 1 {
    
    // Ask for input
    print("How many lines?")
    
    // Is it nil?
    guard let givenInput = readLine() else {
        //prompt again when nil
        continue
    }
    
    // TEst 2: Can it be an integer?
    guard let givenInteger = Int(givenInput) else {
        continue
    }
    
    //Test 3
    // Too low or too high
    if givenInteger < 1 || givenInteger > 9999 {
        continue
    }
    
    // WE've all the tests, so save the input and break the loop
    expectedLines = givenInteger
    break
}


// PROCESS
// Implement the primary logic of the problem here
// Some output may be given here if you desire

// Example of how to collect multiple input lines
var french = 0
var english = 0

print("Please enter the \(expectedLines) lines of text:")
for _ in 1...expectedLines {
    
    // Get the input (use guard-let to guarantee it is not nil)
    // and then print it out
    guard let givenLine = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    
    // Now we have the line, we can print it out, analyze it as needed, et cetera
    // PROCESS
    //print(givenLine)
    // Look at each chracter
    for letter in givenLine {
        print(letter)
        
        // Categorize the character:
        
        switch letter {
        case "f" , "F":
            french += 1
        case "t" , "T":
            english += 1
        default:
            break
        }
        
    }
    
}

// OUTPUT
// Report results to the user here
if french > english {
    print("This looks like French")
} else if french < english {
    print("This looks like English.")
    
}


