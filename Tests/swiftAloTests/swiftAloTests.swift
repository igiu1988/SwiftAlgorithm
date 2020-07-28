import XCTest
@testable import swiftAlo

final class swiftAloTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(swiftAlo().text, "Hello, World!")
    }
    
    func testOffer03() {
        XCTAssertEqual(Offer03().findRepeatNumber([1,2,3,4,4,5]), 4)
    }
    


    static var allTests = [
        ("testExample", testExample),
    ]
}
