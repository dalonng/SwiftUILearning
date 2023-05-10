//
//  SwiftUILearningApp.swift
//  SwiftUILearning
//
//  Created by d on 2023/05/03.
//

import SwiftUI

@main
struct SwiftUILearningApp: App {
  var body: some Scene {
    WindowGroup {
      MainView()
        .environmentObject(Router())
    }
  }
}
