//
//  Feature.swift
//  SwiftUILearning
//
//  Created by d on 2023/05/03.
//

import SwiftUI

struct Feature {
  let name: String
  let color: Color
}

extension Feature: Hashable {  
}

extension Feature: Identifiable {
  var id: String {
    name
  }
}

extension Feature {
  
  static let features = [
    Feature(name: "NavigationStack", color: .yellow),
    
    
    Feature(name: "red", color: .red),
    Feature(name: "blue", color: .blue),
    Feature(name: "green", color: .green),

  ]
}
