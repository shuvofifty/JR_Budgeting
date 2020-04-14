//
//  RootCard.swift
//  JR_Budgeting
//
//  Created by Shubroto Shuvo on 4/13/20.
//  Copyright © 2020 Shubroto Shuvo. All rights reserved.
//

import SwiftUI

struct RootCard: View {
    var body: some View {
//        GeometryReader { geometry in
//            ZStack {
//                RoundedRectangle (cornerRadius: 10, style: .continuous)
//                    .fill(Color.white)
//                    .shadow(radius: 10)
//
//                VStack {
//                    Text("Just a random text to work")
//                }
//                .padding(20)
//            }
//            .frame(width: geometry.size.width - 40, height: nil, alignment: .top)
//            .fixedSize()
//        }
        ZStack {
            RoundedRectangle (cornerRadius: 10, style: .continuous)
                .fill(Color.white)
                .shadow(radius: 10)
            
            VStack {
                Text("Just a random text to work")
                Text("Just a random text to work")
                Text("Just a random text to work")
                Text("Just a random text to work")
                Text("Just a random text to work")
            }
            .padding(20)
        }
        .fixedSize(horizontal: false, vertical: true)
        .padding(EdgeInsets(top: 5, leading: 20, bottom: 5, trailing: 20))
    }
}

struct RootCard_Previews: PreviewProvider {
    static var previews: some View {
        RootCard()
    }
}
