

import UIKit
var secret = (random()) % 10
println("Player: guess the secret number")
var guess = 1
println(guess)
while guess != secret{
    if(guess>secret){
        println("My number is lower")
        guess = guessless(guess)
    }
    else if(guess<secret){
        println("My number is bigger")
        guess = guessmore(guess)
    }
    println(guess)
}
println("Right! You found it!")

func guessless(number: Int) -> Int{
    return (random()) % number
}

func guessmore(number: Int) -> Int{
    return (random()) % (10-number) + number
}
