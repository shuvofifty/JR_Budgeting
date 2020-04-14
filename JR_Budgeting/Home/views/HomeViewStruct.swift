//
//  HomeViewStruct.swift
//  JR_Budgeting
//
//  Created by Shubroto Shuvo on 4/13/20.
//  Copyright © 2020 Shubroto Shuvo. All rights reserved.
//

import SwiftUI

struct HomeViewStruct: View {
    var body: some View {
        ScrollView {
            VStack {
                Image("home-bg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .edgesIgnoringSafeArea(.top)
                RootCard()
                    .offset(y: -130)
                    .padding(.bottom, -130)
                Text("My text here")
                RootCard()
                RootCard()
                RootCard()
                RootCard()
                Spacer()
                
            }
        }
    }
}

struct HomeViewStruct_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewStruct()
    }
}
