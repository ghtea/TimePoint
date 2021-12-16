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
        NavigationView {
            ScrollView{
            ZStack {
                VStack(alignment: .leading) { // time guide line
                        ForEach(1...24, id: \.self, content: { item in
                            HStack {
                                Text(String(item))
                                    .frame(width: 32)
                                Rectangle().frame(height: 1)
                            }.frame(height: 32)
                        })
                    
                }
                .frame(maxWidth: .infinity)
                HStack{
                    VStack{
                        //
                    }.frame(width: 40)
                    VStack { // event boxes
                        
                            ForEach(vm.events, id: \.self, content: {item in
                                AreaBoxEvent(data: item, height: 120)
                            })
                        
                    }
                }
            }
            .navigationTitle("Timeline")
            .navigationBarTitleDisplayMode(.inline)
        }
        }
    }
}

struct TimelineScreen_Previews: PreviewProvider {
    static var previews: some View {
        TimelineScreen()
    }
}
