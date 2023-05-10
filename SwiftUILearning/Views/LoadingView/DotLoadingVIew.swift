//
//  DotLoadingVIew.swift
//  SwiftUILearning
//
//  Created by d on 2023/05/05.
//

import SwiftUI

struct DotLoadingView: View {

  private let delay: Double = 0.2
  private let size: CGFloat
  private let color: Color

  init(size: CGFloat = 60, color: Color) {
    self.size = size
    self.color = color
  }

  var body: some View {
    VStack {
      Spacer()
      HStack {
        Spacer()
        DotView(delay: 0, size: size, color: color)
        DotView(delay: delay, size: size, color: color)
        DotView(delay: delay * 2, size: size, color: color)
        Spacer()
      }
      .background(.black)
      Spacer()
    }
  }
}

struct DotLoadingVIew_Previews: PreviewProvider {
  static var previews: some View {
    DotLoadingView(size: 60, color: .blue)
  }
}
