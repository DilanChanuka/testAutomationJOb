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
          runtime:sleep(500);
          io:println(string `[Log #${logCount}] Processing task with ID: ${randomNumber}`);
          io:println("---------------------------------------------------");
          logCount += 1;
      }

      io:println("SQL query exceeded timeout — task failed");
      return error("Simulated SQL query timeout after 25 seconds");
  }
