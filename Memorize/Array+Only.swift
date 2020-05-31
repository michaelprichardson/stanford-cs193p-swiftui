//
//  Array+Only.swift
//  Memorize
//
//  Created by Michael Richardson on 31/05/2020.
//  Copyright © 2020 Michael Richardson. All rights reserved.
//

import Foundation

extension Array {
    
    var only: Element? {
        count == 1 ? first : nil
    }
    
}
