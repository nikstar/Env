import XCTest
@testable import Env

final class EnvTests: XCTestCase {
    func testHome() {
        let home = env.HOME
        XCTAssert(home == NSHomeDirectory())
    }
    
    func testSetUnset() {
        env.TESTVAR = nil
        XCTAssertNil(env.TESTVAR)
        env.TESTVAR = "test"
        XCTAssert(env.TESTVAR == "test")
        env.TESTVAR = "test2"
        XCTAssert(env.TESTVAR == "test2")
        env.TESTVAR = nil
        XCTAssertNil(env.TESTVAR)
    }
    
    func testInout() {
        env.PATH = "/usr/bin"
        XCTAssert(env.PATH == "/usr/bin")
        env.PATH! += ":/usr/local/bin"
        XCTAssert(env.PATH == "/usr/bin:/usr/local/bin")
    }

    static var allTests = [
        ("testHome", testHome),
        ("testSetUnset", testSetUnset),
        ("testInout", testInout),
    ]
}
