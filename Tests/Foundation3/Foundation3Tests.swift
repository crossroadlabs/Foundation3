//
//  Foundation3Tests.swift
//  Foundation3Tests
//
//  Created by Daniel Leping on 24/03/2016.
//  Copyright © 2016 Daniel Leping. All rights reserved.
//

import XCTest
@testable import Foundation3

class Foundation3Tests: XCTestCase {
    
}

#if os(Linux)
extension Foundation3Tests {
	static var allTests : [(String, Foundation3Tests -> () throws -> Void)] {
		return [
		]
	}
}
#endif