//
//  ConditionTests.swift
//  Foundation3
//
//  Created by Yegor Popovych on 6/19/16.
//  Copyright © 2016 Daniel Leping. All rights reserved.
//

import Foundation

import XCTest
import Foundation
import Foundation3

class ConditionTests: XCTestCase {
    
    func testWait() {
        let cond = Condition()
        cond.signal()
        let _ = cond.wait(until: Date())
    }
    
}

#if os(Linux)
extension ConditionTests {
	static var allTests : [(String, (ConditionTests) -> () throws -> Void)] {
		return [
			("testWait", testWait),
		]
	}
}
#endif