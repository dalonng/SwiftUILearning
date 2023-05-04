//
//  MainView.swift
//  SwiftUILearning
//
//  Created by d on 2023/05/03.
//

import SwiftUI

struct MainView: View {
  
  @EnvironmentObject var router: Router
  
  var features = Feature.features
  
  var body: some View {
    NavigationStack(path: $router.path) {
      List {
        ForEach(features) { f in
          FeatureRow(feature: f)
        }
      }
      .navigationDestination(for: Feature.self) { f in
        switch f.type {
        case .navigationStack: Page(feature: f)
        case .loadingView: DotLoadingVIew(color: f.color)
        }
      }
      .navigationBarTitle("タイトル")
    }
    .navigationBarTitle("Main")
    .environmentObject(router)
    
  }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
      MainView()
        .environmentObject(Router())
    }
}
