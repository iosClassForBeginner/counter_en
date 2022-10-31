//
//  CountActions.swift
//  coutner_app
//
//  Created by Wataru Maeda on 2022/10/30.
//

import SwiftUI

struct CountActions: View {
  @Binding var count: Int
  
  var body: some View {
    HStack {
      Button {
        count -= 1
      } label: {
        Text("-")
          .font(.largeTitle)
          .fontWeight(.heavy)
          .padding(.horizontal, 24)
          .padding(.vertical, 8)
      }
      
      Button {
        count += 1
      } label: {
        Text("+")
          .font(.largeTitle)
          .fontWeight(.heavy)
          .padding(.horizontal, 24)
          .padding(.vertical, 8)
      }
    }
  }
}

struct CountActions_Previews: PreviewProvider {
  @State static var count = 1
  static var previews: some View {
    CountActions(count: $count)
  }
}
