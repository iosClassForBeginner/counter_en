//
//  ContentView.swift
//  coutner_app
//
//  Created by Wataru Maeda on 2022/10/30.
//

import SwiftUI

struct ContentView: View {
  @State private var count = 0

  var body: some View {
    ZStack {
      Color(.black)
        .edgesIgnoringSafeArea(.all)
      
      VStack {
        Text("Counter")
          .foregroundColor(.white)
          .font(.largeTitle)
          .fontWeight(.heavy)
          .padding(.top, 48)
        
        Text("\(count)")
          .font(.system(size: 60))
          .foregroundColor(.white)
          .font(.largeTitle)
          .fontWeight(.heavy)
          .padding(.top, 24)
          .animation(.default, value: count)
        
        Spacer()
        
        CountActions(count: $count)
          .padding(.bottom, 24)
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
