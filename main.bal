  import ballerina/io;
  import ballerina/lang.runtime;
  import ballerina/random;

  public function main() returns error? {
      io:println("Starting automation job...");
      io:println("---------------------------------------------------");

      int logCount = 1;
      while logCount <= 5 {
          int randomNumber = check random:createIntInRange(1, 1001);
          io:println(string `[Log #${logCount}] Running query - Random value: ${randomNumber}`);
          runtime:sleep(5);
          logCount += 1;
      }

      io:println("SQL query exceeded timeout — task failed");
      runtime:halt(1);
  }
