import java.io.*;
import java_cup.runtime.Symbol;

public class Main {
    public static void main(String[] args) {
        if (args.length != 1) {
            System.out.println("Usage: java Main <inputfile>");
            System.exit(1);
        }
        
        try {
            // Create a file reader
            FileReader fileReader = new FileReader(args[0]);
            
            // Create the scanner
            Scanner l = new Scanner(fileReader);
            
            // Create the parser
            parser p = new parser(l);
            
            // Parse the input
            Object result = p.parse();
            
            System.out.println("Parsing completed successfully!");
        } catch (Exception e) {
            System.err.println("Error: " + e.getMessage());
            e.printStackTrace();
        }
    }
}
