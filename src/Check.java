import org.antlr.v4.runtime.*;
import org.antlr.v4.gui.TestRig;
import static java.lang.System.out;
import java.io.*;

public class Check {
    public static void check (String filename) throws Exception {
        CharStream input = CharStreams.fromFileName(filename);
        ExprLexer lexer = new ExprLexer(input);
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        ExprParser parser = new ExprParser(tokens);
        parser.program();
    }
    public static void main(String[] args) throws Exception {
        check(args[0]);
    }
}
