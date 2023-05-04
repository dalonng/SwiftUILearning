//
//  DotView.swift
//  SwiftUILearning
//
//  Created by d on 2023/05/04.
//

import SwiftUI

struct DotView: View {
  
  private let delay: Double
  private let size: CGFloat
  private let color: Color
  
  @State private var scale: CGFloat = 0.5
  
  init(delay: Double, size: CGFloat, color: Color) {
    self.delay = delay
    self.size = size
    self.color = color
  }
  
  var body: some View {
    Circle()
      .frame(width: size, height: size)
      .scaleEffect(scale)
      .foregroundColor(color)
      .animation(Animation.easeInOut(duration: 0.6).repeatForever().delay(delay), value: scale)
      .onAppear {
        withAnimation {
          self.scale = 1
        }
      }
  }
}

struct DotView_Previews: PreviewProvider {
    static var previews: some View {
      DotView(delay: 0, size: 60, color: .blue)
    }
}
