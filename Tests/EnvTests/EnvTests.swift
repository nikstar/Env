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

    static var allTests = [
        ("testHome", testHome),
        ("testSetUnset", testSetUnset),
    ]
}
