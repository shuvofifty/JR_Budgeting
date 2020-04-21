//
//  RootCard.swift
//  JR_Budgeting
//
//  Created by Shubroto Shuvo on 4/13/20.
//  Copyright © 2020 Shubroto Shuvo. All rights reserved.
//

import SwiftUI

struct RootCard<Content>: View where Content: View {
    
    let contentBody: () -> Content
    let contentPadding: EdgeInsets
    let cardMargin: EdgeInsets
    
    init(
        contentPadding: EdgeInsets = EdgeInsets(top: 32, leading: 24, bottom: 32, trailing: 24),
        cardMargin: EdgeInsets = EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0),
        @ViewBuilder _ content: @escaping () -> Content
    ) {
        self.contentBody = content
        self.contentPadding = contentPadding
        self.cardMargin = cardMargin
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle (cornerRadius: 10, style: .continuous)
                .fill(Color(#colorLiteral(red: 0.8853190541, green: 0.8904536963, blue: 0.8858556747, alpha: 1)))
                .shadow(radius: 2)
            
            contentBody()
                .padding(contentPadding)

        }
        .fixedSize(horizontal: false, vertical: true)
        .padding(cardMargin)
    }
}

struct RootCard_Previews: PreviewProvider {
    static var previews: some View {
        RootCard {
            Text("Something here")
        }
    }
}
