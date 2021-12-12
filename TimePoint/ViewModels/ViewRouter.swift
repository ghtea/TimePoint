//
//  ViewRouter.swift
//  TimePoint
//
//  Created by wiz on 2021/12/12.
//

import Foundation

class ViewRouter: ObservableObject {
    // here you can decide which view to show at launch
    @Published var currentTabId: TabId = .home
}

enum TabId {
    case home
    case settings
}
