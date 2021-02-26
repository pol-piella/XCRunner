import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(XCRunnerTests.allTests),
    ]
}
#endif
