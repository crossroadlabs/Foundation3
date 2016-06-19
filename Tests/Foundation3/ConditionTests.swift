//===--- ConditionTests.swift ----------------------------------------------===//
//Copyright (c) 2016 Daniel Leping (dileping)
//
//Licensed under the Apache License, Version 2.0 (the "License");
//you may not use this file except in compliance with the License.
//You may obtain a copy of the License at
//
//http://www.apache.org/licenses/LICENSE-2.0
//
//Unless required by applicable law or agreed to in writing, software
//distributed under the License is distributed on an "AS IS" BASIS,
//WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//See the License for the specific language governing permissions and
//limitations under the License.
//===----------------------------------------------------------------------===//

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