#!/bin/bash

# Navigate to project root
cd "$(dirname "$0")"

# Generate lexer
echo "Generating lexer..."
jflex ./scanner.jflex

# Generate parser
echo "Generating parser..."
java java_cup.MainDrawTree ./parser.cup

# Compile Java files
echo "Compiling Java files..."
javac  *.java

# Run the program with the test file
echo "Running test..."
java Main input.txt
