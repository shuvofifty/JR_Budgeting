//
//  RootTextMod.swift
//  JR_Budgeting
//
//  Created by Shubroto Shuvo on 4/16/20.
//  Copyright © 2020 Shubroto Shuvo. All rights reserved.
//

import Foundation
import SwiftUI

struct RootTextMod: ViewModifier {
    var style: RootTextTypeEnum
    
    init(style: RootTextTypeEnum = .p1) {
        self.style = style
    }
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: style.getSize(), weight: .regular))
            .foregroundColor(Color(#colorLiteral(red: 0.07766338438, green: 0.07720952481, blue: 0.07801724225, alpha: 1)))
    }
}
