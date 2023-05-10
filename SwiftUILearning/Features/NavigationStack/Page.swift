//
//  Page.swift
//  SwiftUILearning
//
//  Created by d on 2023/05/03.
//

import SwiftUI

struct Page: View {

  var feature: Feature

  var body: some View {
    VStack {
      Text("\(feature.name)")
        .font(.title)
      DotLoadingView(color: .blue)
        .frame(height: 100)
    }
    .foregroundColor(feature.color)
  }
}

struct Page_Previews: PreviewProvider {
  static var previews: some View {
    Page(feature: Feature.features.last!)
  }
}
