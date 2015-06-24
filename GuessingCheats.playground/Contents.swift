//: Playground - noun: a place where people can play

import UIKit
let userNumber = random() % 10
var compNumber = random() % 10
var guesses = [0,0,0,0,0,0,0,0,0,0]

if compNumber < userNumber{
    println("My number is greater")
    for elem in guesses{if guesses[compNumber] == 0 guesses[compNumber] = compNumber}
    compNumber = greaterNum(compNumber)
}
if compNumber > userNumber{
    println("My number is smaller")
    for elem in guesses{if guesses[compNumber] == 0 guesses[compNumber] = compNumber}
    compNumber = smallerNum(compNumber)
}


func greaterNum(number: Int) -> Int{
    return (random()) % (10-number) + number
}
func smallerNum(number: Int) -> Int{
    return (random()) % number
}


/*
Develop a swift program where the user thinks about a number between 1 and 10 and the computer has to guess it. The computer will generate a random number and will ask the user whether this
is the number or not. The computer should not repeat any number and must discover if the user is
cheating it (it already said all the numbers between 1 and 10)
*/
