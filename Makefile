.PHONY: run test newday

# Run a specific day: make run YEAR=2025 DAY=01
run:
	@cd $(YEAR)/day$(DAY) && go run .

# Test a specific day: make test YEAR=2025 DAY=01
test:
	@cd $(YEAR)/day$(DAY) && go test -v

# Run all tests
test-all:
	@go test ./...

# Create a new day: make newday YEAR=2025 DAY=02
newday:
	@mkdir -p $(YEAR)/day$(DAY)
	@echo 'package main\n\nimport (\n\t"fmt"\n\t"log"\n\n\t"github.com/willtn/advent-of-code-go/utils"\n)\n\nfunc main() {\n\tlines, err := utils.ReadLines("input.txt")\n\tif err != nil {\n\t\tlog.Fatal(err)\n\t}\n\n\tfmt.Println("Part 1:", solvePart1(lines))\n\tfmt.Println("Part 2:", solvePart2(lines))\n}\n\nfunc solvePart1(lines []string) int {\n\t// TODO: Implement part 1 solution\n\treturn 0\n}\n\nfunc solvePart2(lines []string) int {\n\t// TODO: Implement part 2 solution\n\treturn 0\n}' > $(YEAR)/day$(DAY)/main.go
	@echo 'package main\n\nimport (\n\t"testing"\n)\n\nvar exampleInput = []string{\n\t// TODO: Add example input lines here\n}\n\nfunc TestPart1(t *testing.T) {\n\texpected := 0 // TODO: Set expected result\n\tresult := solvePart1(exampleInput)\n\tif result != expected {\n\t\tt.Errorf("Part 1: expected %d, got %d", expected, result)\n\t}\n}\n\nfunc TestPart2(t *testing.T) {\n\texpected := 0 // TODO: Set expected result\n\tresult := solvePart2(exampleInput)\n\tif result != expected {\n\t\tt.Errorf("Part 2: expected %d, got %d", expected, result)\n\t}\n}' > $(YEAR)/day$(DAY)/main_test.go
	@touch $(YEAR)/day$(DAY)/input.txt
	@echo "Created $(YEAR)/day$(DAY)"

