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
            ZStack(alignment: .top) {
//                Image("home-bg")
//                    .resizable()
//                    .aspectRatio(contentMode: .fill)
//                    .frame(minHeight: 351, maxHeight: 351)
                Rectangle()
                    .frame(minHeight: 351, maxHeight: 351)
                    .foregroundColor(Color.clear)
                    .overlay(Image("home-bg"))
                VStack {
                    VStack {
                        Text("Welcome")
                            .foregroundColor(Color(red: 249, green: 247, blue: 232))
                            .fontWeight(.bold)
                            .font(.system(size: 35))
                            .modifier(RootTextMod(style: .h2))
                        
                        Image("default-user-img")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 132, height: 132, alignment: .center)
                            .background(Color(#colorLiteral(red: 0.8901367188, green: 0.8902401924, blue: 0.8900902867, alpha: 1)))
                            .clipShape(Circle())
                            .overlay(
                                Circle().stroke(Color(red: 249, green: 247, blue: 232), lineWidth: 3)
                            )
                            .shadow(radius: 4)
                            .padding(.bottom, 44)
                        
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
                        
                    }
                    .padding(27)
                    .padding(.top, 20)
                    
                    Spacer()
                    
                }
            }
        }
        .edgesIgnoringSafeArea(.top)
        .background(Color(#colorLiteral(red: 0.8901367188, green: 0.8902401924, blue: 0.8900902867, alpha: 1)))
    }
}

struct HomeViewStruct_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewStruct()
    }
}
