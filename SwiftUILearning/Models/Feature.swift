//
//  Feature.swift
//  SwiftUILearning
//
//  Created by d on 2023/05/03.
//

import SwiftUI

enum FeatureType: String {
  case navigationStack = "Navigation Stack"
  case loadingView = "Loading View"
  case overlays = "The power of overlays in SwiftUI"
}

struct Feature {
  let color: Color
  let type: FeatureType

  var name: String {
    type.rawValue
  }
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
    Feature(color: .yellow, type: .navigationStack),
    Feature(color: .purple, type: .loadingView),
    Feature(color: .red, type: .overlays),
  ]
}
