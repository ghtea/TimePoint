//
//  HomeScreen.swift
//  TimePoint
//
//  Created by wiz on 2021/12/12.
//

import SwiftUI


struct HomeScreen: View {
    
    @State var tasks: [Int] = Array(0..<20)
    
    var body: some View {
        NavigationView {
            List {
                ForEach(tasks, id: \.self) { num in
                    Text("Task \(num)")
                }
                .onDelete(perform: { indexSet in
                    tasks.remove(at: indexSet.first ?? 0)
                })
            }
            .navigationTitle("Tasks")
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
