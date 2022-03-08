//
//  BoardFoot.swift
//
//  Created by Layla Michel
//  Created on 2022-03-23
//  Version 1.0
//  Copyright (c) 2022 IMH. All rights reserved.
//
//  This program asks the user for the width and height of a board
// and displays what the length should be in order to get a board
// foot (144 inches^3).

// Creating function to calculate the length of the board
func CalculateBoardFoot(width: Double, height: Double) -> Double {
    let length = 144 / (width * height)
    return length
}

outerloop: while true {
    // Get the width from the user
    print("Enter the width(inches): ", terminator: "")
    let userWidth = readLine()

    // Convert from string to double
    // Value of -1 is given if the input is not a number
    let userWidthDouble = Double(userWidth!) ?? -1

    // Check that width isn't 0 or negative
    if userWidthDouble <= 0 {
        print("Please enter a valid number.\n")
    } else {
        while true {
            // Get the height from the user
            print("\nEnter the height(inches): ", terminator: "")
            let userHeight = readLine()

            let userHeightDouble = Double(userHeight!) ?? -1

            // Check that height isn't 0 or negative
            if userHeightDouble <= 0 {
                print("Please enter a valid number.\n")
            } else {
                let userLength = CalculateBoardFoot(width: userWidthDouble, height: userHeightDouble)
                print("\nThe length should be: \(userLength) inches.")
                break outerloop
            }
        }
    }
}
