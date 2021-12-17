//
//  ContentView.swift
//  TimePoint
//
//  Created by wiz on 2021/12/11.
//

import SwiftUI

struct RootView: View {
    
    @EnvironmentObject private var viewRouter: ViewRouter
        
    var body: some View {
        GeometryReader { geometry in
            VStack {
                switch viewRouter.currentPageId {
                case .home :
                    HomeScreen()
                case .timeline:
                    TimelineScreen()
                case .rules:
                    RulesScreen()
                case .settings:
                    SettingsScreen()
                }
                Spacer()
                // TabBar
                ZStack {
                    HStack {
                        TabBarIcon(title: "Home", iconSystemName: "heart.fill", tabId: .home)
                        TabBarIcon(title: "Timeline", iconSystemName: "clock.fill", tabId: .settings)
                        TabBarIcon(title: "Rules", iconSystemName: "arrow.up.arrow.down.square.fill", tabId: .home)
                        TabBarIcon(title: "Settings", iconSystemName: "gearshape.fill", tabId: .settings)
                    }
                    .background(Color("TabBarBackground").shadow(radius: 2))
                }.frame(width: geometry.size.width, height: 64)
            }.frame(width: geometry.size.width)
                
        }.edgesIgnoringSafeArea(.bottom)
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
            .environmentObject(ViewRouter())
    }
}
