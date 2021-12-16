//
//  Colors.swift
//  TimePoint
//
//  Created by wiz on 2021/12/16.
//

import SwiftUI

// https://swiftuirecipes.com/blog/supporting-dark-mode-in-swiftui
extension UIColor {
  convenience init(light: UIColor, dark: UIColor) {
    self.init { traitCollection in
      switch traitCollection.userInterfaceStyle {
      case .light, .unspecified:
        return light
      case .dark:
        return dark
      @unknown default:
        return light
      }
    }
  }
}

extension Color {
  init(light: Color, dark: Color?) {
      if let unwrappedDark = dark {
          self.init(UIColor(light: UIColor(light), dark: UIColor(unwrappedDark)))
      } else {
          self.init(UIColor(light))
      }
  }
    
    static let defaultBackground = Color(light: .white, dark: .black)
}

/*
 
 VStack {
   // ....
 }
 .background(Color.defaultBackground)
 
 */
