import XCTest
@testable import PuzzleMaker

final class PuzzleMakerTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(PuzzleMaker().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
