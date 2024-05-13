
# Boolean Algebra Post-fix Notation Calculator

## Project Overview
This project implements a post-fix notation calculator for Boolean algebra using Flex and Bison. The calculator can evaluate Boolean expressions using the values TRUE and FALSE and the operators AND, OR, NOT, and XOR.

## Features and Functionalities
- Accepts both capital and lower-case letters for TRUE and FALSE.
- Supports the operators & (AND), | (OR), ! (NOT), and XOR (exclusive OR). 
- Input can be provided through keyboard and calculations are performed when Enter is pressed.
- Program exits on the end-of-file character (CTRL+d).

## Usage
To compile and run the calculator:
1. Compile using Flex and Bison with the provided `boolcalc.l` and `boolcalc.y` files.
2. Run the generated executable.
3. Input the Boolean expression in post-fix notation and press Enter to evaluate.

## Examples
```
INPUT: TRUE FALSE &
OUTPUT: FALSE

INPUT: true false xor
OUTPUT: TRUE

INPUT: TRUE!
OUTPUT: FALSE

INPUT: tRuE FaLsE & ! fAlSe |
OUTPUT: TRUE
```

## License
This project is licensed under the MIT License. See the LICENSE file for more details.
