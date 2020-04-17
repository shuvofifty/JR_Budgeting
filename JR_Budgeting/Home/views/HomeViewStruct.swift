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
                VStack {
                    RootCard {
                        VStack {
                            Text("Summary")
                                .modifier(RootTextMod(style: .h1))
                            HStack {
                                Text("Budget Left")
                                    .modifier(RootTextMod())
                                Spacer()
                                Text("Spend")
                                    .modifier(RootTextMod())
                            }
                            HStack {
                                Text("25,000")
                                    .modifier(RootTextMod())
                                Spacer()
                                Text("30,774")
                                    .modifier(RootTextMod())
                            }
                        }
                    }
                    .offset(y: -50)
                    .padding(.bottom, -30)
                    
                    HStack {
                        Text("Your budget packet")
                            .modifier(RootTextMod(style: .h2))
                        Spacer()
                        Text("+")
                    }
                    
                    RootCard {
                        Text("Just my card here")
                    }
                }.padding(20)
                
                
                Spacer()
                
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct HomeViewStruct_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewStruct()
    }
}
