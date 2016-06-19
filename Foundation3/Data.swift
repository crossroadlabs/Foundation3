//
//  Data.swift
//  Foundation3
//
//  Created by Yegor Popovych on 6/19/16.
//  Copyright © 2016 Daniel Leping. All rights reserved.
//

import Foundation

#if swift(>=3.0) && !os(Linux)
#else
    public typealias Data = NSData
#endif
