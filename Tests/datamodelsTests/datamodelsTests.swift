import XCTest
@testable import datamodels

final class datamodelsTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(datamodels().text, "Hello, World!")
    }


    static var allTests = [
        ("testExample", testExample),
    ]
}
