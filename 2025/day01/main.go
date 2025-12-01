package main

import (
	"fmt"
	"log"

	"github.com/willtn/advent-of-code-go/utils"
)

func main() {
	lines, err := utils.ReadLines("input.txt")
	if err != nil {
		log.Fatal(err)
	}

	fmt.Println("Part 1:", solvePart1(lines))
	fmt.Println("Part 2:", solvePart2(lines))
}

func solvePart1(lines []string) int {
	// TODO: Implement part 1 solution
	return 0
}

func solvePart2(lines []string) int {
	// TODO: Implement part 2 solution
	return 0
}

