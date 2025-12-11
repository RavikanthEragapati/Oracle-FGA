       IDENTIFICATION DIVISION.
       PROGRAM-ID. COBOL-BUSINESS-LOGIC.

       DATA DIVISION.

       LINKAGE SECTION.
      * ----------------------------------------------------
      * 1. Define the pointer passed from C++
      * ----------------------------------------------------
       01  LS-INPUT-PTR           USAGE IS POINTER.

       01  LS-COUNTER-STORAGE.
           05  LS-COUNTER           PIC S9(8) COMP-5.

      * ----------------------------------------------------
      * NOTE: The PROCEDURE DIVISION must use the name of the 
      * pointer (LS-INPUT-PTR) as its argument.
      * ----------------------------------------------------
       PROCEDURE DIVISION USING LS-INPUT-PTR.
           SET ADDRESS OF LS-COUNTER-STORAGE TO LS-INPUT-PTR.

           DISPLAY "[COBOL] Entered COBOL logic."

           DISPLAY "[COBOL] Counter before increment: " LS-COUNTER

           ADD 1 TO LS-COUNTER

           DISPLAY "[COBOL] Counter after increment: " LS-COUNTER

           GOBACK.
