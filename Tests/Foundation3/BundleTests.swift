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

    #if !os(Linux)
        // Not implemented in Linux
        func testInit() {
            let bundle = Bundle(for: self.dynamicType)
            XCTAssert(bundle.bundlePath != "")
        }
    #endif
    
    func testPathForResource() {
        let path = Bundle.main().pathForResource("test", ofType: "txt", inDirectory: nil)
        XCTAssert(path == nil)
        
        let path2 = Bundle.main().pathForResource("test", ofType: "txt")
        XCTAssert(path2 == nil)
        
        let path3 = Bundle.main().pathForResource("test", ofType: "txt", inDirectory: nil, forLocalization: nil)
        XCTAssert(path3 == nil)
    }

    #if !os(Linux)
        //Crash on Linux :(
        func testPathForResourceClass() {
            let path = Bundle.pathForResource("test", ofType: "txt", inDirectory: "")
            XCTAssert(path == nil)

            let path2 = Bundle.pathsForResources(ofType: "txt", inDirectory: "")
            XCTAssert(path2.count == 0)
        }
    #endif
    
    func testPathForResources() {
        let path = Bundle.main().pathsForResources(ofType: "txt", inDirectory: nil)
        XCTAssert(path.count == 0)
        
        let path2 = Bundle.main().pathsForResources(ofType: "txt", inDirectory: nil, forLocalization: nil)
        XCTAssert(path2.count == 0)
    }
    
}

#if os(Linux)
extension BundleTests {
	static var allTests : [(String, (BundleTests) -> () throws -> Void)] {
		return [
			("testPathForResource", testPathForResource),
			("testPathForResources", testPathForResources),
		]
	}
}
#endif