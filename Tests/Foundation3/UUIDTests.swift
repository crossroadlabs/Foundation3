//
//  UUIDTests.swift
//  Foundation3
//
//  Created by Yegor Popovych on 6/19/16.
//  Copyright © 2016 Daniel Leping. All rights reserved.
//

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
