import XCTest
@testable import swift_alo

final class swift_aloTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(swift_alo().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
