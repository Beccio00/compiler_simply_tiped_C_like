# Simple C-like Language Compiler

This is a simple compiler for a C-like language built using JFlex and CUP.


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
