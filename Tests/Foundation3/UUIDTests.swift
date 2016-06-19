//===--- UUIDTests.swift --------------------------------------------------===//
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
import Boilerplate

class UUIDTests: XCTestCase {
    
    func testUUID() {
        let uuid1 = UUID(uuidString: "4f84831b-ad8a-4e6e-a6d2-c083d25c820f")
        XCTAssert(uuid1 != nil)
        
        let uuidt = uuid1!.uuid
        
        let uuid2 = UUID(uuid: uuidt)
        XCTAssert(uuid1 == uuid2)
        
        XCTAssert(uuid2.uuidString.lowercased() == "4f84831b-ad8a-4e6e-a6d2-c083d25c820f")
    }
}

#if os(Linux)
extension UUIDTests {
	static var allTests : [(String, (UUIDTests) -> () throws -> Void)] {
		return [
			("testUUID", testUUID),
		]
	}
}
#endif