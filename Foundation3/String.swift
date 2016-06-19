//===--- String.swift -----------------------------------------------------===//
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
import Boilerplate

#if swift(>=3.0) && !os(Linux)
#else
    
    public extension String {
        public struct Encoding : RawRepresentable {
        
            /// The corresponding value of the raw type.
            ///
            /// A new instance initialized with `rawValue` will be equivalent to this
            /// instance. For example:
            ///
            ///     enum PaperSize: String {
            ///         case A4, A5, Letter, Legal
            ///     }
            ///
            ///     let selectedSize = PaperSize.Letter
            ///     print(selectedSize.rawValue)
            ///     // Prints "Letter"
            ///
            ///     print(selectedSize == PaperSize(rawValue: selectedSize.rawValue)!)
            ///     // Prints "true"
            public let rawValue: UInt
            
            /// Creates a new instance with the specified raw value.
            ///
            /// If there is no value of the type that corresponds with the specified raw
            /// value, this initializer returns `nil`. For example:
            ///
            ///     enum PaperSize: String {
            ///         case A4, A5, Letter, Legal
            ///     }
            ///
            ///     print(PaperSize(rawValue: "Legal"))
            ///     // Prints "Optional("PaperSize.Legal")"
            ///
            ///     print(PaperSize(rawValue: "Tabloid"))
            ///     // Prints "nil"
            ///
            /// - Parameter rawValue: The raw value to use for the new instance.
            public init(rawValue: UInt) {
                self.rawValue = rawValue
            }
            
            public static let ascii = String.Encoding(rawValue: NSASCIIStringEncoding)
            
            public static let nextstep = String.Encoding(rawValue: NSNEXTSTEPStringEncoding)
            
            public static let japaneseEUC = String.Encoding(rawValue: NSJapaneseEUCStringEncoding)
            
            public static let utf8 = String.Encoding(rawValue: NSUTF8StringEncoding)
            
            public static let isoLatin1 = String.Encoding(rawValue: NSISOLatin1StringEncoding)
            
            public static let symbol = String.Encoding(rawValue: NSSymbolStringEncoding)
            
            public static let nonLossyASCII = String.Encoding(rawValue: NSNonLossyASCIIStringEncoding)
            
            public static let shiftJIS = String.Encoding(rawValue: NSShiftJISStringEncoding)
            
            public static let isoLatin2 = String.Encoding(rawValue: NSISOLatin2StringEncoding)
            
            public static let unicode = String.Encoding(rawValue: NSUnicodeStringEncoding)
            
            public static let windowsCP1251 = String.Encoding(rawValue: NSWindowsCP1251StringEncoding)
            
            public static let windowsCP1252 = String.Encoding(rawValue: NSWindowsCP1252StringEncoding)
            
            public static let windowsCP1253 = String.Encoding(rawValue: NSWindowsCP1253StringEncoding)
            
            public static let windowsCP1254 = String.Encoding(rawValue: NSWindowsCP1254StringEncoding)
            
            public static let windowsCP1250 = String.Encoding(rawValue: NSWindowsCP1250StringEncoding)
            
            public static let iso2022JP = String.Encoding(rawValue: NSISO2022JPStringEncoding)
            
            public static let macOSRoman = String.Encoding(rawValue: NSMacOSRomanStringEncoding)
            
            public static let utf16 = String.Encoding(rawValue: NSUTF16StringEncoding)
            
            public static let utf16BigEndian = String.Encoding(rawValue: NSUTF16BigEndianStringEncoding)
            
            public static let utf16LittleEndian = String.Encoding(rawValue: NSUTF16LittleEndianStringEncoding)
            
            public static let utf32 = String.Encoding(rawValue: NSUTF32StringEncoding)
            
            public static let utf32BigEndian = String.Encoding(rawValue: NSUTF32BigEndianStringEncoding)
            
            public static let utf32LittleEndian = String.Encoding(rawValue: NSUTF32LittleEndianStringEncoding)
        }
    }

    #if os(Linux)
        public extension String {
            public typealias EncodingConversionOptions = NSStringEncodingConversionOptions
            public typealias EnumerationOptions = NSStringEnumerationOptions
            public typealias CompareOptions = NSStringCompareOptions
        }

        public extension String {
            /// Returns an `Data` object containing a representation of
            /// the `String` encoded using a given encoding.
            public func data(using encoding: String.Encoding, allowLossyConversion lossy: Bool = true) -> Data? {
                return self.data(using: encoding.rawValue, allowLossyConversion: lossy)
            }
        }
    #else
        public extension String {
            public struct EncodingConversionOptions : OptionSet {
                public let rawValue: UInt

                public init(rawValue: UInt) {
                    self.rawValue = rawValue
                }

                public static let allowLossy = String.EncodingConversionOptions(rawValue: NSStringEncodingConversionOptions.AllowLossy.rawValue)

                public static let externalRepresentation = String.EncodingConversionOptions(rawValue: NSStringEncodingConversionOptions.ExternalRepresentation.rawValue)
            }

            public struct EnumerationOptions : OptionSet {
                public let rawValue: UInt

                public init(rawValue: UInt) {
                    self.rawValue = rawValue
                }

                public static let byParagraphs = String.EnumerationOptions(rawValue: NSStringEnumerationOptions.ByParagraphs.rawValue) // Equivalent to paragraphRangeForRange:

                public static let byComposedCharacterSequences =  String.EnumerationOptions(rawValue:NSStringEnumerationOptions.ByComposedCharacterSequences.rawValue) // Equivalent to rangeOfComposedCharacterSequencesForRange:

                public static let byWords = String.EnumerationOptions(rawValue: NSStringEnumerationOptions.ByWords.rawValue)

                public static let bySentences = String.EnumerationOptions(rawValue: NSStringEnumerationOptions.BySentences.rawValue)

                // ...and combine any of the desired additional options:
                public static let reverse = String.EnumerationOptions(rawValue: NSStringEnumerationOptions.Reverse.rawValue)

                public static let substringNotRequired = String.EnumerationOptions(rawValue: NSStringEnumerationOptions.SubstringNotRequired.rawValue)

                public static let localized = String.EnumerationOptions(rawValue: NSStringEnumerationOptions.Localized.rawValue) // User's default locale
            }

            public struct CompareOptions : OptionSet {
                public let rawValue: UInt

                public init(rawValue: UInt) {
                    self.rawValue = rawValue
                }

                public static let caseInsensitiveSearch = String.CompareOptions(rawValue: NSStringCompareOptions.CaseInsensitiveSearch.rawValue)

                public static let literalSearch = String.CompareOptions(rawValue: NSStringCompareOptions.LiteralSearch.rawValue)

                public static let backwardsSearch = String.CompareOptions(rawValue: NSStringCompareOptions.BackwardsSearch.rawValue)

                public static let anchoredSearch = String.CompareOptions(rawValue: NSStringCompareOptions.AnchoredSearch.rawValue)

                public static let numericSearch = String.CompareOptions(rawValue: NSStringCompareOptions.NumericSearch.rawValue)

                public static let diacriticInsensitiveSearch = String.CompareOptions(rawValue: NSStringCompareOptions.DiacriticInsensitiveSearch.rawValue)

                public static let widthInsensitiveSearch = String.CompareOptions(rawValue: NSStringCompareOptions.WidthInsensitiveSearch.rawValue)


                public static let forcedOrderingSearch = String.CompareOptions(rawValue: NSStringCompareOptions.ForcedOrderingSearch.rawValue)

                public static let regularExpressionSearch = String.CompareOptions(rawValue: NSStringCompareOptions.RegularExpressionSearch.rawValue)
            }
        }

        public extension String {
            /// Returns an `Data` object containing a representation of
            /// the `String` encoded using a given encoding.
            public func data(using encoding: String.Encoding, allowLossyConversion lossy: Bool = true) -> Data? {
                return self.dataUsingEncoding(encoding.rawValue, allowLossyConversion: lossy)
            }
        }
    #endif
#endif
