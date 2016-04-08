//===--- NSBundle.swift ---------------------------------------------------===//
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

#if swift(>=3.0)
    
    #if os(Linux)
        public extension NSBundle {
            public /*not inherited*/ convenience init(for aClass: Swift.AnyClass) {
                self.init(forClass: aClass)
            }
        }
    
        public extension NSBundle {
            public class func path(forResource name: String?, ofType ext: String?, inDirectory bundlePath: String) -> String? {
                return self.pathForResource(name, ofType: ext, inDirectory: bundlePath)
            }
    
            public class func pathsForResources(ofType ext: String?, inDirectory bundlePath: String) -> [String] {
                return self.pathsForResourcesOfType(ext, inDirectory: bundlePath)
            }
    
            public func path(forResource name: String?, ofType ext: String?) -> String? {
                return self.pathForResource(name, ofType: ext)
            }
    
            public func path(forResource name: String?, ofType ext: String?, inDirectory subpath: String?) -> String? {
                return self.pathForResource(name, ofType: ext, inDirectory: subpath)
            }
    
            public func path(forResource name: String?, ofType ext: String?, inDirectory subpath: String?, forLocalization localizationName: String?) -> String? {
                return self.pathForResource(name, ofType: ext, inDirectory: subpath, forLocalization: localizationName)
            }
    
            public func pathsForResources(ofType ext: String?, inDirectory subpath: String?) -> [String] {
                return self.pathsForResourcesOfType(ext, inDirectory: subpath)
            }
    
            public func pathsForResources(ofType ext: String?, inDirectory subpath: String?, forLocalization localizationName: String?) -> [String] {
                return self.pathsForResourcesOfType(ext, inDirectory: subpath, forLocalization: localizationName)
            }
        }
    #endif
    
#else
    
    public extension NSBundle {
        public /*not inherited*/ convenience init(for aClass: Swift.AnyClass) {
            self.init(forClass: aClass)
        }
    }
    
    public extension NSBundle {
        @objc(pathForResource3:ofType:inDirectory:)
        public class func path(forResource name: String?, ofType ext: String?, inDirectory bundlePath: String) -> String? {
            return self.pathForResource(name, ofType: ext, inDirectory: bundlePath)
        }
        
        @objc(pathsForResourcesOfType3:inDirectory:)
        public class func pathsForResources(ofType ext: String?, inDirectory bundlePath: String) -> [String] {
            return self.pathsForResourcesOfType(ext, inDirectory: bundlePath)
        }
        
        @objc(pathForResource3:ofType:)
        public func path(forResource name: String?, ofType ext: String?) -> String? {
            return self.pathForResource(name, ofType: ext)
        }
        
        @objc(pathForResource3:ofType:inDirectory:)
        public func path(forResource name: String?, ofType ext: String?, inDirectory subpath: String?) -> String? {
            return self.pathForResource(name, ofType: ext, inDirectory: subpath)
        }
        
        @objc(pathForResource3:ofType:inDirectory:forLocalization:)
        public func path(forResource name: String?, ofType ext: String?, inDirectory subpath: String?, forLocalization localizationName: String?) -> String? {
            return self.pathForResource(name, ofType: ext, inDirectory: subpath, forLocalization: localizationName)
        }
        
        @objc(pathsForResourcesOfType3:inDirectory:)
        public func pathsForResources(ofType ext: String?, inDirectory subpath: String?) -> [String] {
            return self.pathsForResourcesOfType(ext, inDirectory: subpath)
        }
        
        @objc(pathsForResourcesOfType3:inDirectory:forLocalization:)
        public func pathsForResources(ofType ext: String?, inDirectory subpath: String?, forLocalization localizationName: String?) -> [String] {
            return self.pathsForResourcesOfType(ext, inDirectory: subpath, forLocalization: localizationName)
        }
    }
    
#endif