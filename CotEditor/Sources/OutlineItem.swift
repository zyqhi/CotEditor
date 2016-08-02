/*
 
 OutlineItem.swift
 
 CotEditor
 https://coteditor.com
 
 Created by 1024jp on 2016-05-12.
 
 ------------------------------------------------------------------------------
 
 © 2016 1024jp
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 
 */

import Foundation

struct OutlineItem: Equatable, CustomDebugStringConvertible {

    let title: String
    let range: NSRange
    let isBold: Bool
    let isItalic: Bool
    let hasUnderline: Bool
    
    
    init(title: String, range: NSRange, isBold: Bool = false, isItalic: Bool = false, hasUnderline: Bool = false) {
        
        self.title = title
        self.range = range
        self.isBold = isBold
        self.isItalic = isItalic
        self.hasUnderline = hasUnderline
    }
    
    
    var debugDescription: String {
        
        return "<\(self): \(self.title)>"
    }
  
    
    static func ==(lhs: OutlineItem, rhs: OutlineItem) -> Bool {
        
        return lhs.title == rhs.title &&
            lhs.range == rhs.range &&
            lhs.isBold == rhs.isBold &&
            lhs.isItalic == rhs.isItalic &&
            lhs.hasUnderline == rhs.hasUnderline
    }
    
}
