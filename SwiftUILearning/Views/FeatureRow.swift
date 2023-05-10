//
//  FeatureRow.swift
//  SwiftUILearning
//
//  Created by d on 2023/05/03.
//

import SwiftUI

struct FeatureRow: View {

  var feature: Feature

  var body: some View {
    NavigationLink(value: feature) {
      Text("\(feature.name)")
        .font(.title2)
    }.frame(height: 40)
  }
}

struct FeatureRow_Previews: PreviewProvider {
  static var previews: some View {
    FeatureRow(feature: Feature.features.last!)
  }
}
