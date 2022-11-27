// Copyright © 2018 Inanc Gumus
// Learn Go Programming Course
// License: https://creativecommons.org/licenses/by-nc-sa/4.0/
//
// For more tutorials  : https://learngoprogramming.com
// In-person training  : https://www.linkedin.com/in/inancgumus/
// Follow me on twitter: https://twitter.com/inancgumus

package main

import "rsc.io/quote"
import x "learngo-03"
// import "/bye"


// ---------------------------------------------------------
// EXERCISE: Use your own package
//
//  Create a few Go files and call their functions from
//  the main function.
//
//  1- Create main.go, greet.go and bye.go files
//  2- In main.go: Call greet and bye functions.
//  3- Run `main.go`
//
// HINT
//  greet function should be in greet.go
//  bye function should be in bye.go
//
// EXPECTED OUTPUT
//  hi there
//  goodbye
// ---------------------------------------------------------

// func greet(){
// 	fmt.Println("hello there")
// }
// func bye(){
// 	fmt.Println("bye")
// }


func main() {
	// call functions of the other files here
	x.greet()
	// bye()
}
