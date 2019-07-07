import XCTest

import EnvTests

var tests = [XCTestCaseEntry]()
tests += EnvTests.allTests()
XCTMain(tests)
