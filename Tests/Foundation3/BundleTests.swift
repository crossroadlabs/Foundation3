//
//  BundleTests.swift
//  Foundation3
//
//  Created by Yegor Popovych on 6/19/16.
//  Copyright © 2016 Daniel Leping. All rights reserved.
//

import XCTest
import Foundation
import Foundation3

class BundleTests: XCTestCase {
    
    func testInit() {
        let bundle = Bundle(for: self.dynamicType)
        XCTAssert(bundle.bundlePath != "")
    }
    
    func testPathForResource() {
        let path = Bundle.main().pathForResource("test", ofType: "txt", inDirectory: nil)
        XCTAssert(path == nil)
        
        let path2 = Bundle.main().pathForResource("test", ofType: "txt")
        XCTAssert(path2 == nil)
        
        let path3 = Bundle.main().pathForResource("test", ofType: "txt", inDirectory: nil, forLocalization: nil)
        XCTAssert(path3 == nil)
    }
    
    func testPathForResourceClass() {
        let path = Bundle.pathForResource("test", ofType: "txt", inDirectory: "")
        XCTAssert(path == nil)
        
        let path2 = Bundle.pathsForResources(ofType: "txt", inDirectory: "")
        XCTAssert(path2.count == 0)
    }
    
    func testPathForResources() {
        let path = Bundle.main().pathsForResources(ofType: "txt", inDirectory: nil)
        XCTAssert(path.count == 0)
        
        let path2 = Bundle.main().pathsForResources(ofType: "txt", inDirectory: nil, forLocalization: nil)
        XCTAssert(path2.count == 0)
    }
    
}
