//
//  HomeViewStruct.swift
//  JR_Budgeting
//
//  Created by Shubroto Shuvo on 4/13/20.
//  Copyright © 2020 Shubroto Shuvo. All rights reserved.
//

import SwiftUI

struct HomeViewStruct: View {
    var recentTransaction: [String] = [
        "Bread",
        "Ruti",
        "Aam",
        "Jam",
        "Chicken"
    ]
    
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
                    
                    RootTitleCard(head: {
                        RootTitleCardHeader(title: "Transactions")
                    }) {
                        ForEach(self.recentTransaction, id: \.self) {item in
                            VStack {
                                HStack {
                                   Text(item)
                                        .modifier(RootTextMod(style: .p2))
                                    Spacer()
                                    Text("Edit")
                                    .foregroundColor(Color(#colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)))
                                        .modifier(RootTextMod(style: .p2))
                                }
                                Divider()
                            }
                        }
                    }
                    
                    RootTitleCard(head: {
                        RootTitleCardHeader(title: "Income")
                    }) {
                        ForEach(self.recentTransaction, id: \.self) {item in
                            VStack {
                                HStack {
                                   Text(item)
                                        .modifier(RootTextMod(style: .p2))
                                    Spacer()
                                    Text("Edit")
                                    .foregroundColor(Color(#colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)))
                                        .modifier(RootTextMod(style: .p2))
                                }
                                Divider()
                            }
                        }
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
