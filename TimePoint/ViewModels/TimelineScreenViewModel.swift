//
//  Event.swift
//  TimePoint
//
//  Created by wiz on 2021/12/14.
//

import Foundation

class TimelineScreenViewModel: ObservableObject {
    @Published var events: [Event] = Event.dummyData
}
