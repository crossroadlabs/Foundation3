//
//  StringTests.swift
//  Foundation3
//
//  Created by Yegor Popovych on 6/19/16.
//  Copyright © 2016 Daniel Leping. All rights reserved.
//

import Foundation

import XCTest
import Foundation
import Foundation3

class StringTests: XCTestCase {
    
    func testDataUsingEncoding() {
        let data1 = "str".data(using: String.Encoding.ascii, allowLossyConversion: true)
        let data2 = "str".data(using: String.Encoding.utf8)
        XCTAssert(data1 == data2)
    }
    
}
