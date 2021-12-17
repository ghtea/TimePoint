//
//  SettingsScreen.swift
//  TimePoint
//
//  Created by wiz on 2021/12/12.
//

import SwiftUI

struct SettingsScreen: View {
    
    struct Course: Hashable {
        let name, imageName: String
        let numLessons: Int
        let totalTime: Float
    }
    
    let courses: [Course] = [
        .init(name: "SwiftUI Mastery", imageName: "course1", numLessons: 35, totalTime: 10.35),
        .init(name: "FullStack Social", imageName: "course2", numLessons: 50, totalTime: 20.5),
        .init(name: "Maps UIKit SwiftUI", imageName: "course3", numLessons: 44, totalTime: 16.3)
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(courses, id: \.self) { course in
                        Image(course.imageName)
                            .resizable()
                            .scaledToFill()
                        
                        HStack(alignment: .top) {
                            VStack(alignment: .leading) {
                                Text(course.name)
                                    .font(.system(size: 16, weight: .bold))
                                Text("\(course.numLessons) lessons")
                            }
                            Spacer()
                            HStack {
                                Image(systemName: "deskclock")
                                    .font(.system(size: 14, weight: .bold))
                                Text(course.totalTime.description + " hrs")
                                    .font(.system(size: 15, weight: .semibold))
                            }.foregroundColor(.white)
                            .padding(.vertical, 6)
                            .padding(.horizontal, 12)
                            .background(Color.blue)
                            .cornerRadius(16)
                        }.padding(.top, 8)
                        .padding(.horizontal)
                        .padding(.bottom, 16)
                    }
                }
            }.navigationTitle("Courses")
        }
    }
}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
    }
}
