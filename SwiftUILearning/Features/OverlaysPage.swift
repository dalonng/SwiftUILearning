//
//  OverlaysPage.swift
//  SwiftUILearning
//
//  Created by d on 2023/05/10.
//

import SwiftUI

struct OverlaysPage: View {

  var feature: Feature
  @State private var selectedImage: String?
  @Namespace private var hero

  let images: [String] = [
    "pencil",
    "trash",
    "lock.doc",
    "person",
    "figure.run",
  ]

  var body: some View {
    LazyVGrid(columns: Array(repeating: .init(.flexible()), count: 3)) {
      ForEach(images, id: \.self) { image in
        Image(systemName: selectedImage == image ? "" : image)
          .resizable()
          .scaledToFit()
          .background(Material.regular)
          .matchedGeometryEffect(id: image, in: hero)
          .onTapGesture {
            selectedImage = image
          }
      }
    }
    .background(.red)
    .overlay {
      if let image = selectedImage {
        Image(systemName: image)
          .resizable()
          .scaledToFill()
          .background(Material.thin)
          .matchedGeometryEffect(id: image, in: hero)
          .animation(.easeInOut, value: selectedImage)
          .onTapGesture {
            selectedImage = nil
          }
      }
    }
    .navigationTitle("Overlays Page")
    .animation(.default, value: selectedImage)
  }
}

struct OverlaysPage_Previews: PreviewProvider {
  static var previews: some View {
    OverlaysPage(feature: Feature.features.last!)
  }
}
