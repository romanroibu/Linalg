import XCTest

@testable import LinalgTests

#if !os(macOS)
XCTMain([
    VectorSpec.allTests,
])
#endif
