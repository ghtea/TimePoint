//
//  Event.swift
//  TimePoint
//
//  Created by wiz on 2021/12/14.
//

import Foundation

struct Event: Hashable {
    var title: String
    var startAt: Date
    var endAt: Date
}

extension Event {
    static let dummyData: [Event] = [
        Event(title: "event 1", startAt: Date(), endAt: Date()),
        Event(title: "event 2", startAt: Date(), endAt: Date()),
        Event(title: "event 3", startAt: Date(), endAt: Date())
    ]
}
