import XCTest

@testable import Foundation3TestSuite

XCTMain([
	testCase(BundleTests.allTests),
	testCase(StringTests.allTests),
	testCase(UUIDTests.allTests),
	testCase(ConditionTests.allTests),
])