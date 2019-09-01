import XCTest
@testable import Env

final class EnvTests: XCTestCase {
    func testHome() {
        let home = Env.HOME
        XCTAssert(home == NSHomeDirectory())
    }
    
    func testSetUnset() {
        Env.TESTVAR = nil
        XCTAssertNil(Env.TESTVAR)
        Env.TESTVAR = "test"
        XCTAssert(Env.TESTVAR == "test")
        Env.TESTVAR = "test2"
        XCTAssert(Env.TESTVAR == "test2")
        Env.TESTVAR = nil
        XCTAssertNil(Env.TESTVAR)
    }
    
    func testInout() {
        Env.PATH = "/usr/bin"
        XCTAssert(Env.PATH == "/usr/bin")
        Env.PATH! += ":/usr/local/bin"
        XCTAssert(Env.PATH == "/usr/bin:/usr/local/bin")
    }
    
    func testThrowing() {
        Env.TESTVAR = nil
        XCTAssertNil(Env.TESTVAR)
        XCTAssertThrowsError(try Env.get("TESTVAR")) { error in
            guard let error = error as? EnvironmentVariableMissing else { XCTFail(); return }
            XCTAssert(error == EnvironmentVariableMissing(name: "TESTVAR"))
        }
    }

    static var allTests = [
        ("testHome", testHome),
        ("testSetUnset", testSetUnset),
        ("testInout", testInout),
        ("testThrowing", testThrowing),
    ]
}
