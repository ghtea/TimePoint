//
//  AreaBoxEvent.swift
//  TimePoint
//
//  Created by wiz on 2021/12/15.
//

import SwiftUI

struct AreaBoxEvent: View {
    let data: Event
    let height: Int
    
    
    let startAtText: (Event) -> String = { data in
        let dateFormatter = DateFormatter();
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm";
        
        return dateFormatter.string(from: data.startAt)
    }
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(data.title)
            Text(startAtText(data))
        }
        .frame(height: CGFloat(height))
        .frame(
              minWidth: 0,
              maxWidth: .infinity
            )
        .background(Color.green)
        .cornerRadius(4)
    }
}

struct AreaBoxEvent_Previews: PreviewProvider {
    static var previews: some View {
        AreaBoxEvent(
            data: Event(title: "test event", startAt: Date(), endAt: Date()),
            height: 120
        )
    }
}
