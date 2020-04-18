//
//  RootTitleCard.swift
//  JR_Budgeting
//
//  Created by Shubroto Shuvo on 4/17/20.
//  Copyright © 2020 Shubroto Shuvo. All rights reserved.
//

import Foundation
import SwiftUI

/// Extension of Root card with a title at top and body at bottom
struct RootTitleCard<BodyContent, HeadContent>: View where BodyContent: View, HeadContent: View {
    
    let contentHeader: () -> HeadContent
    let contentBody: () -> BodyContent
    let contentPadding: EdgeInsets
    let cardMargin: EdgeInsets
    
    init(
        contentPadding: EdgeInsets = EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20),
        cardMargin: EdgeInsets = EdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0),
        @ViewBuilder head: @escaping () -> HeadContent,
        @ViewBuilder _ content: @escaping () -> BodyContent
    ) {
        self.contentBody = content
        self.contentPadding = contentPadding
        self.cardMargin = cardMargin
        self.contentHeader = head
    }
    
    var body: some View {
        RootCard(contentPadding: contentPadding, cardMargin: cardMargin) {
            VStack {
                self.contentHeader()
                Divider()
                self.contentBody()
            }
        }
    }
}

struct RootTitleCard_Previews: PreviewProvider {
    static var previews: some View {
        RootTitleCard(head: {
            RootTitleCardHeader(title: "My title here")
        }) {
            Text("Something here. Maybe a big of a para but hey life is always useful when you know what are upto right")
        }
    }
}
