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
        cond.wait(until: Date())
    }
    
}
