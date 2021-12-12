//
//  TabBarIcon.swift
//  TimePoint
//
//  Created by wiz on 2021/12/12.
//

import SwiftUI

struct TabBarIcon: View {
    @EnvironmentObject private var viewRouter: ViewRouter
        
    let title: String
    let iconSystemName: String
    let tabId: TabId
    
    var body: some View {
        VStack {
            Image(systemName: iconSystemName)
            Text(title)
        }
        .onTapGesture {
            viewRouter.currentTabId = tabId
        }
    }
}

struct TabBarIcon_Previews: PreviewProvider {
    static var previews: some View {
        TabBarIcon(title: "test", iconSystemName: "heart.fill", tabId: .home)
    }
}
