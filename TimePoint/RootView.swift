//
//  ContentView.swift
//  TimePoint
//
//  Created by wiz on 2021/12/11.
//

import SwiftUI

struct RootView: View {
    
    @EnvironmentObject private var viewRouter: ViewRouter
    
    init() {
        // https://developer.apple.com/documentation/uikit/uinavigationcontroller/customizing_your_app_s_navigation_bar
        let appearance = UINavigationBarAppearance()

        appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)

        UINavigationBar.appearance().standardAppearance = appearance
    }
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                // Screen
                Group {
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
                }
                
                // TabBar
                Group {
                    HStack {
                        TabBarIcon(
                            title: "Home",
                            iconSystemName: "heart.fill",
                            tabId: .home,
                            isSelected: viewRouter.currentPageId == .home
                        )
                        Spacer()
                        TabBarIcon(
                            title: "Timeline",
                            iconSystemName: "clock.fill",
                            tabId: .timeline,
                            isSelected: viewRouter.currentPageId == .timeline
                        )
                        Spacer()
                        Group {
                            TabBarAddIcon()
                        }
                        Spacer()
                        TabBarIcon(
                            title: "Rules",
                            iconSystemName: "arrow.up.arrow.down.square.fill",
                            tabId: .rules,
                            isSelected: viewRouter.currentPageId == .rules
                        )
                        Spacer()
                        TabBarIcon(
                            title: "Settings",
                            iconSystemName: "gearshape.fill",
                            tabId: .settings,
                            isSelected: viewRouter.currentPageId == .settings
                        )
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 4)
                    .frame(width: geometry.size.width)
                    .background(.ultraThinMaterial)
                }
                .frame(width: geometry.size.width, height: geometry.size.height, alignment: .bottom)
                    
            }.frame(width: geometry.size.width)
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
            .environmentObject(ViewRouter())
    }
}
