//
//  RootTitleCardHeader.swift
//  JR_Budgeting
//
//  Created by Shubroto Shuvo on 4/17/20.
//  Copyright © 2020 Shubroto Shuvo. All rights reserved.
//

import SwiftUI

struct RootTitleCardHeader: View {
    
    var title: String
    var color: UIColor
    
    init(title: String = "Default title", color: UIColor = #colorLiteral(red: 0.0700629428, green: 0.07008271664, blue: 0.0700603351, alpha: 1)) {
        self.title = title
        self.color = color
    }
    
    var body: some View {
        HStack {
            Text(title)
                .foregroundColor(Color(color))
                .modifier(RootTextMod(style: .h2))
            Spacer()
        }
    }
}

struct RootTitleCardHeader_Previews: PreviewProvider {
    static var previews: some View {
        RootTitleCardHeader()
    }
}
