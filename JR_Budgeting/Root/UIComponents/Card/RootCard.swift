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
        contentPadding: EdgeInsets = EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20),
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
                .fill(Color.white)
                .shadow(radius: 10)
            
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
