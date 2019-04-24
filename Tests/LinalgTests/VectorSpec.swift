import Linalg
import XCTest
import Foundation

class VectorSpec: XCTestCase {

    #if !os(macOS)
    static var allTests = testCase([
        ("testInit", testInit),
    ])
    #endif

    func testInit() {
        let x = Vector()
        XCTAssert(true)
    }
}
