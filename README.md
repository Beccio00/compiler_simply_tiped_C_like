# Simple C-like Language Compiler

This is a simple compiler for a C-like language built using JFlex and CUP.

## Project Structure

```
compiler_simply_tiped_C_like/
├── src/
│   ├── compiler/
│   │   └── Main.java        # Main class that orchestrates the compilation process
│   ├── lexer/
│   │   └── Lexer.flex       # Lexical analyzer specification
│   └── parser/
│       ├── Parser.cup       # Parser specification
│       └── sym.java         # Symbol constants
├── test/
│   └── example.c            # Test input file
├── build.sh                 # Build script
└── README.md                # This file
```

## Features

Currently, the compiler can recognize simple variable declarations like:

```
int a = 3 + 4;
```

## Requirements

- JDK 8 or higher
- JFlex
- CUP (Java CUP)

## Usage

1. Make sure JFlex and CUP are installed on your system
2. Run the build script:

```
./build.sh
```

This will:
- Generate the lexer from Lexer.flex
- Generate the parser from Parser.cup
- Compile all Java files
- Run the compiler on the test file

## Manual Compilation

If you prefer to run the commands manually:

```bash
# Generate lexer
jflex ./src/lexer/Lexer.flex

# Generate parser
java java_cup.MainDrawTree ./src/parser/Parser.cup

# Compile Java files
javac *.java

# Run the compiler
java compiler.Main test/example.c
```

## Extending the Compiler

To extend this compiler with more features:
1. Add new token definitions to Lexer.flex
2. Add new grammar rules to Parser.cup
3. Update sym.java with any new terminal symbols
4. Rebuild using the build script

## License

This project is open-source and available for educational purposes.
