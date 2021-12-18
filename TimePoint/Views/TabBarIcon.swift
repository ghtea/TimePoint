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
    let tabId: PageId
    
    @State private var isSelected: Bool = false
    
    var body: some View {
        VStack(spacing: 0) {
            Image(systemName: iconSystemName)
            .font(.system(size: 24))
            .frame(width: 32, height: 32)
            Text(title)
                .font(.system(size: 16))
        }
        .onTapGesture {
            viewRouter.currentPageId = tabId
        }
    }
}

struct TabBarIcon_Previews: PreviewProvider {
    static var previews: some View {
        TabBarIcon(title: "test", iconSystemName: "heart.fill", tabId: .home)
    }
}
