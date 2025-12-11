public class Begin {

    // 1. Declare the native method signature
    public native int processAccount(int currentCounter);

    // 2. Load the shared library containing the C++ JNI code
    static {
        // NOTE: The library name depends on your OS: 
        // Windows: JavaPOC.dll
        // Linux/macOS: libJavaPOC.so or libJavaPOC.dylib
        System.loadLibrary("Begin");
    }

    public void startProcessing() {
        int loopCount = 5;
        int counter = 100;

        System.out.println("--- Starting Java Processing Loop (Total " + loopCount + " calls) ---");
        
        for (int i = 0; i < loopCount; i++) {
            System.out.println("\n[JAVA] Calling JNI for loop iteration: " + (i + 1));
            System.out.println("[JAVA] Counter before JNI call: " + counter);
            
            // 3. Call the native method
            counter = processAccount(counter);
            
            System.out.println("[JAVA] Counter after JNI call: " + counter);
        }
        
        System.out.println("\n--- Processing Finished. Final Counter Value: " + counter + " ---");
    }

    public static void main(String[] args) {
        new Begin().startProcessing();
    }
}