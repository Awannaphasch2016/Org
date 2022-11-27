package main

import (
	"fmt"

	hey "example.com/m"
)

func main(){
	message := hey.Hello("Gladys")
	fmt.Println(message)
}
