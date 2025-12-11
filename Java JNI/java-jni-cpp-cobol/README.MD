# Compile the Java class
javac Begin.java

# Generate the C/C++ header file (JavaPOC.h)
javac -h . Begin.java


# Example using GnuCOBOL
cobc -c cobol_logic.cob

# to understand what name to use for global entrypoint (T)
nm cobol_logic.o | grep COBOL


# Example for Linux/macOS (adjust include paths for your JDK)
g++ -dynamiclib -o libBegin.dylib JniCppBridge.cpp cobol_logic.o  -I$JAVA_HOME/include -I$JAVA_HOME/include/darwin -I/opt/homebrew/Cellar/gnucobol/3.2_1/include -L/opt/homebrew/Cellar/gnucobol/3.2_1/lib -lcob

# Run Java 
java -Djava.library.path=. Begin