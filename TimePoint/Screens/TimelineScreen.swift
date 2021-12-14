//
//  TimelineScreen.swift
//  TimePoint
//
//  Created by wiz on 2021/12/12.
//

import SwiftUI

struct TimelineScreen: View {
    
    @StateObject private var vm = TimelineScreenViewModel()
    
    var body: some View {
        VStack {
            ScrollView {
                ForEach(vm.events, id: \.self, content: {item in
                    VStack {
                        Text(item.title)
                    }
                })
            }
        }
    }
}

struct TimelineScreen_Previews: PreviewProvider {
    static var previews: some View {
        TimelineScreen()
    }
}
