//===--- NSUUID.swift -----------------------------------------------------===//
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

#if swift(>=3.0) && !os(Linux)
#else
    public extension NSUUID {
        public convenience init?(uuidString string: String) {
            self.init(UUIDString: string)
        }
        
        /* Create an NSUUID with the given bytes */
        public convenience init(uuidBytes bytes: UnsafePointer<UInt8>) {
            self.init(UUIDBytes: bytes)
        }
        
        
        /* Get the individual bytes of the receiver */
        public func getBytes(uuid: UnsafeMutablePointer<UInt8>) {
            self.getUUIDBytes(uuid)
        }
        
        
        /* Return a string description of the UUID, such as "E621E1F8-C36C-495A-93FC-0C247A3E6E5F" */
        public var uuidString: String {
            get {
                return self.UUIDString
            }
        }
    }
#endif