# Advent of Code - Go Solutions

My solutions for [Advent of Code](https://adventofcode.com/) puzzles, written in Go.

## Project Structure

```
.
├── 2025/
│   ├── day01/
│   │   ├── main.go        # Solution code
│   │   ├── main_test.go   # Tests with example input
│   │   └── input.txt      # Puzzle input
│   ├── day02/
│   └── ...
├── utils/
│   ├── input.go           # File reading utilities
│   ├── parse.go           # String parsing helpers
│   ├── math.go            # Math utilities (GCD, LCM, etc.)
│   └── grid.go            # 2D grid helpers
├── go.mod
├── Makefile
└── README.md
```

## Getting Started

### Prerequisites

- Go 1.21 or later

### Running Solutions

```bash
# Run a specific day
make run YEAR=2025 DAY=01

# Or run directly
cd 2025/day01 && go run .
```

### Running Tests

```bash
# Test a specific day
make test YEAR=2025 DAY=01

# Run all tests
make test-all

# Or run directly
cd 2025/day01 && go test -v
```

### Creating a New Day

```bash
# Create scaffolding for a new day
make newday YEAR=2025 DAY=02
```

## Utility Functions

The `utils` package provides common helpers for AoC puzzles:

## Tips for Solving

1. **Copy the puzzle input** into `input.txt`
2. **Start with the example** - add example input to the test file
3. **Run tests frequently** - `make test YEAR=2025 DAY=01`
4. **Add print debugging** - Go compiles fast, iterate quickly!

## License

MIT
