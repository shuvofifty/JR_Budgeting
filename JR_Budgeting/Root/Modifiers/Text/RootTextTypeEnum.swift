//
//  RootTextTypeEnum.swift
//  JR_Budgeting
//
//  Created by Shubroto Shuvo on 4/16/20.
//  Copyright © 2020 Shubroto Shuvo. All rights reserved.
//

import Foundation
import CoreGraphics

enum RootTextTypeEnum {
    case h1
    case h2
    case h3
    case h4
    
    case p1
    case p2
    case p3
    case p4
    
    func getSize() -> CGFloat {
        switch self {
        case .h1:
            return 32
        case .h2:
            return 24
        case .h3:
            return 18.72
        case .h4:
            return 16
        case .p1:
            return 16
        case .p2:
            return 14
        case .p3:
            return 12
        case .p4:
            return 10
        }
    }
}
