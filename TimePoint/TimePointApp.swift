//
//  TimePointApp.swift
//  TimePoint
//
//  Created by wiz on 2021/12/11.
//

import SwiftUI

@main
struct TimePointApp: App {
    @StateObject private var viewRouter = ViewRouter()
    
    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(viewRouter)
        }
    }
}
