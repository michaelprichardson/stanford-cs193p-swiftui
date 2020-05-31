//
//  Array+Identifiable.swift
//  Memorize
//
//  Created by Michael Richardson on 31/05/2020.
//  Copyright © 2020 Michael Richardson. All rights reserved.
//

import Foundation


extension Array where Element: Identifiable {
    
    func firstIndex(matching: Element) -> Int? {
        for ii in 0..<self.count {
            if self[ii].id == matching.id {
                return ii
            }
        }
        return nil
    }
    
}
