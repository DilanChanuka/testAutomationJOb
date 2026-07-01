import ballerina/log;
import testord002/hello;

public function main() returns error? {
    string result = check hello:hello(());
    log:printInfo(result);
}
